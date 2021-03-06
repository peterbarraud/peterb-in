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
            //TODO - this should revert any changes. Right now it doesn't
            scope.ServerResponse.Type = null;
            scope.BlogIsDirty = false;
            scope.showdirtyalert = false;
            scope.blogDetails = angular.copy(scope.blogDetails_Backup);
            //serverFactory.getblogdetails(scope.selectedBlogId,scope);
          }
          scope.new = function () {
            scope.ServerResponse.Type = null;
            scope.setSelectedBlogId(-1);
            scope.selectedCategories = {ids: {}};
            scope.selectedTypes = {ids: {}};
            scope.BlogIsDirty = false;
          }
          //to hide the message, set the type to null
          scope.getresponsemessagetype = function() {
            if (scope.ServerResponse.Type) {
              return "alert alert-dismissible alert-" + scope.ServerResponse.Type;
            }
            else {
              return "hide";
            }
              }

          scope.publish = function() {
            var errormsg = '';
            //to publish blog must have a title
            if (util.isEmptyString(scope.blogDetails.Title)) {
              errormsg += '<p>To publish a blog needs a title.</p>';
            }
            //to publish blog must have either a subtitle or a blog
            if (util.isEmptyString(scope.blogDetails.SubTitle) && util.isEmptyString(scope.blogDetails.Blog)) {
              errormsg += '<p>To publish a blog needs at least either a sub-title or a Blog.</p>';
            }
            if (scope.blogDetails.Categories.length === 0) {
              errormsg += '<p>To publish a blog must be part of at least one category.</p>';
            }
            //TODO:
            //for now let's disable this check. makes testing cumbersome
            if (scope.blogDetails.PublishDate !== null && scope.blogDetails.ModifiedDate <= scope.blogDetails.PublishDate) {
              errormsg += "<p>It appears that this blog has already been published. And you've not made any changes since.</p>";
            }
            if (util.isEmptyString(errormsg) === false) {
              scope.ServerResponse.Message = errormsg;
              scope.ServerResponse.Type = 'danger';
            }
            else {
              serverFactory.publishblog(scope);
            }
          }
          scope.checkListIem = function (listItemID) {
            scope.BlogIsDirty = true;
          }
          scope.save = function() {
            if (!util.isEmptyString(scope.blogDetails.Title)) { //you'll need at least a title to save a blog
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
            else {
              alert("The blog will at least need a title for me to save it.")
            }
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
                  if (old_blogDetails.ID === new_blogDetails.ID) {  //means we havent changed the blog being view but something else has changed
                    if (scope.frm.editor.$dirty) {
                      scope.BlogIsDirty = true;
                    }
                    else if (old_blogDetails.Title !== new_blogDetails.Title) {
                      scope.BlogIsDirty = true;
                    }
                    else if (old_blogDetails.SubTitle !== new_blogDetails.SubTitle) {
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