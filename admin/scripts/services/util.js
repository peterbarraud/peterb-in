'use strict';

/**
 * @ngdoc service
 * @name peterbdotin.util
 * @description
 * # util
 * Factory in the peterbdotin.
 */
angular.module('peterbdotin')
  .factory('util', function () {
    return {
      count: function (arrOrObj) {
        return Array.isArray(arrOrObj) ? arrOrObj.length : Object.keys(arrOrObj).length;
      },
      isEmptyString: function(str) {
        return angular.isUndefined(str) || str ==='';
      },
      scrollTo: function (scrollElement) {
        var anchor = angular.element(scrollElement);
    		if(anchor)
    		{
          var container = angular.element(anchor.parent());
          var top = container.offset().top;
          //first reset the container
          container.scrollTop(0);
          container.scrollTop(anchor.position().top - top - 50);
    		}
      },
    };
  });
