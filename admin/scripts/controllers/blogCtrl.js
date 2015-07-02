'use strict';

/**
 * @ngdoc function
 * @name peterbdotin.controller:MainCtrl
 * @description
 * # MainCtrl
 * Controller of the peterbdotin
 */
angular.module('peterbdotin').controller('blogCtrl', function ($rootScope, $scope, serverFactory,util) {
  $scope.selectedBlogId = 0;
  $scope.showdirtyalert = false;
  $scope.mode = 'readonly';
  $scope.ckeditorIsReady = true;
  $scope.BlogIsDirty = false;

  $scope.setSelectedBlogId = function (selectedBlogId) {
    var goAhead = false;
    if ($scope.BlogIsDirty) {
      //for now we'll just use a message. but later will invoke a modal dialog
      $scope.showdirtyalert = true;
    }
    else {
      goAhead = true;
    }
    if (goAhead) {
      $scope.selectedBlogId = selectedBlogId;
      $scope.mode = 'readonly';
    }
  }
  
  //get the category list
  serverFactory.getcategorylist($scope);
  serverFactory.gettypelist($scope);
  serverFactory.getallblogs($scope);

  
});