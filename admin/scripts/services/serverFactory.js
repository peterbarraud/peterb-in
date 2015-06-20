// TODO This factory is supposed to be customized once integrated
// into loggly. Currently it serves dummy data.

'use strict';

/**
 * @ngdoc service
 * @name peterbdotin.serverFactory
 * @description
 * # serverFactory
 * Factory in the peterbdotin.
 */
angular.module('peterbdotin')
  .factory('serverFactory', function ($http) {
	//private method
    return {
      checkusercredentials: function(email,password) {
        //hardwired for now
        var retval = false;
        if (email === "gapeterb@gmail.com" && password === "danielb07") {
          retval = true;
        }
        return retval;
      },
      getblogdetails : function(blogId,scope) {
        $http.get('services/pbrest.php/getpost/' + blogId).
          success(function(data, status, headers, config) {
            scope.blogDetails = data;
          }).
          error(function(data, status, headers, config) {
            console.log(data);
            // called asynchronously if an error occurs
            // or server returns response with an error status.
          });        
      },
      
      getcategorylist : function(scope) {
        $http.get('services/pbrest.php/getcategorylist').
          success(function(data, status, headers, config) {
            scope.categoryList = data;
          }).
          error(function(data, status, headers, config) {
            console.log(data);
            // called asynchronously if an error occurs
            // or server returns response with an error status.
          });        
      },
      
      gettypelist : function(scope) {
        $http.get('services/pbrest.php/getblogtypelist').
          success(function(data, status, headers, config) {
            scope.typeList = data;
          }).
          error(function(data, status, headers, config) {
            console.log(data);
            // called asynchronously if an error occurs
            // or server returns response with an error status.
          });        
      },
      
      saveblogdetails : function(blogObject) {
        console.log(blogObject);
      },
    };
  });
