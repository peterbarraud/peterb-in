'use strict';

/**
 * @ngdoc directive
 * @name peterbdotin.directive:eventPod
 * @description
 * # eventPod
 */
angular.module('peterbdotin')
  .directive('blogItem', function (util,serverFactory,$location) {
    return {
      templateUrl: 'views/blog-item.html',
      restrict: 'E',
      replace:true,
      link: function postLink(scope,element, attrs) {
          scope.selectedCategories = {ids: {}};
          scope.selectedTypes = {ids: {}};
          scope.editorOptions = {
              uiColor: '#fff',
              toolbarLocation: 'bottom',
              enterMode:CKEDITOR.ENTER_BR,
          };
          scope.$on("ckeditor.ready", function( event ) {scope.ckeditorIsReady = true;});            
          
          
          if (scope.$parent.validUser === false)  { //route back to the login page
            $location.path( "/" );
          }
          

          scope.cancel = function () {
            scope.BlogIsDirty = false;
            scope.showdirtyalert = false;
            scope.mode = 'readonly';
          }
          //this function simply sets the mode of the app to edit
          //it does not do things like edit the current blog or stuff like that
          scope.edit = function () {
            if (scope.selectedBlogId !== 0) {
              scope.BlogIsDirty = false;
              scope.mode = 'edit';
            }
              //get an empty object
          }
          scope.new = function () {
            scope.setSelectedBlogId(-1);
            scope.selectedCategories = {ids: {}};
            scope.selectedTypes = {ids: {}};
            scope.BlogIsDirty = false;
            scope.mode = 'edit';
          }
          
          scope.checkListIem = function (listItemID) {
            scope.BlogIsDirty = true;
          }
          scope.save = function() {
            //CATEGORIES
            //clear the current blog categories list
            scope.blogDetails.Categories = [];
            //iterate the list of selected categories and add them to the blogDetails object Categories array
            angular.forEach (scope.selectedCategories.ids, function(isaddcategory,selectedCategoryID){
              if (isaddcategory) {
                scope.categoryList.forEach (function (category) {
                  if (category.ID === selectedCategoryID) {
                    scope.blogDetails.Categories.push(category);
                  }
                });
              }
            });
            //TYPES
            //clear the current blog categories list
            scope.blogDetails.Types = [];
            //iterate the list of selected categories and add them to the blogDetails object Categories array
            angular.forEach (scope.selectedTypes.ids, function(isaddtype,selectedTypeID){
              if (isaddtype) {
                scope.typeList.forEach (function (blogType) {
                  if (blogType.ID === selectedTypeID) {
                    scope.blogDetails.Types.push(blogType);
                  }
                });
              }
            });
            serverFactory.saveblogdetails(scope);
          }

          //we're checking for dirty blog details
          //this watch will set the dirty to true if a user makes some changes to the blog details
          //this is useful in two obvious cases:
          //1. to enable the save button
          //2. to throw a warning if a user tries to navigate out of this screen
          scope.$watch('blogDetails',function (new_blogDetails,old_blogDetails){
              //we are checking for a dirty blog
              //so only test the watcher as long as the id has not changed
            if (scope.ckeditorIsReady) {
              if (!angular.isUndefined(old_blogDetails) && !angular.isUndefined(new_blogDetails)) {
                if (!angular.isUndefined(old_blogDetails.ID) && !angular.isUndefined(new_blogDetails.ID)) {
                  if (old_blogDetails.ID === new_blogDetails.ID) {
                    if (scope.frm.editor.$dirty) {
                      scope.BlogIsDirty = true;
                    }
                  }
                }
              }
            }
          },true);  //true arg is used to watch objects
          

        scope.$watch('selectedBlogId',function (new_selectedBlogId,old_selectedBlogId){
            //dont get here on load. is there a better way of stopping a watch on load?
            if (new_selectedBlogId !== 0) {
              serverFactory.getblogdetails(new_selectedBlogId,scope);
            }
          });
        }
    };
  });