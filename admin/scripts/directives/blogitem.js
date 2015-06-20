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
          if (scope.$parent.validUser === false)  { //route back to the login page
            $location.path( "/" );
          }
          
          scope.testingthecats = function() {
            console.log(scope.selectedCategories);
          }

          scope.cancel = function () {
            scope.blogIsDirty = false;
            scope.showdirtyalert = false;
            scope.mode = 'readonly';
          }
          //this function simply sets the mode of the app to edit
          //it does not do things like edit the current blog or stuff like that
          scope.edit = function () {
            if (scope.selectedBlogId !== 0) {
              scope.mode = 'edit';
            }
              //get an empty object
          }
          scope.new = function () {
            scope.setSelectedBlogId(-1);
            scope.mode = 'edit';
          }
          
          scope.save = function() {
            //first lets clear out the current blog categories array
            scope.blogDetails.Categories.length = 0;
            //iterate the list of selected categories and add them to the blogDetails object Categories array
            for (var selectedCategoryID in scope.selectedCategories.ids) {
              if (scope.selectedCategories.ids[selectedCategoryID]){
                scope.categoryList.forEach (function (category) {
                  if (category.ID === selectedCategoryID) {
                    scope.blogDetails.Categories.push(category);
                  }
                });
              }
              
            }
            serverFactory.saveblogdetails(scope.blogDetails);
          }
          scope.setListItemModel = function(listitemID) {
            console.log(listitemID);
          },
          

          scope.$watch('blogDetails',function (new_blogDetails,old_blogDetails){
            //we are checking for a dirty blog
            //so only test the watcher as long as the id has not changed
          if (angular.isUndefined(old_blogDetails) === false && angular.isUndefined(new_blogDetails) === false) {
                if (old_blogDetails.id === new_blogDetails.id) {
                      scope.blogIsDirty = true;
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