'use strict';

/**
 * @ngdoc service
 * @name servicecourseApp.teacher
 * @description
 * # teacher
 * Service in the servicecourseApp.
 */
angular.module('servicecourseApp')
  .service('teacher', function ($http) {
    return{
      agregarProfesor: function(teacher){
        return $http({
          method: 'POST',
          url: 'http://localhost:3000/teachers',
          data: teacher
        });
      }
    }
    // AngularJS will instantiate a singleton by calling "new" on this function
  });
