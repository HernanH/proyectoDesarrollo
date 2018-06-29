'use strict';

/**
 * @ngdoc service
 * @name servicecourseApp.course
 * @description
 * # course
 * Service in the servicecourseApp.
 */
angular.module('servicecourseApp')
  .service('course', function ($http) {
    return{
      agregarCurso: function(course){
        return $http({
          method: 'POST',
          url: 'http://localhost:3000/teachers/1/courses',
          data: course
        });
      },

      mostrarCursos: function(){
        return $http({
          method: 'GET',
          url:'http://localhost:3000/teachers/1/courses',
        });
      },

      eliminarCurso: function(id){
        return $http({
          method: 'DELETE',
          url:'http://localhost:3000/teachers/1/courses/'+id,
        });
      }
    }
    // AngularJS will instantiate a singleton by calling "new" on this function
  });
