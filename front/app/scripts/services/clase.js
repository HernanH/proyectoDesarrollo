'use strict';

/**
 * @ngdoc service
 * @name servicecourseApp.clase
 * @description
 * # clase
 * Service in the servicecourseApp.
 */
angular.module('servicecourseApp')
  .service('clase', function ($http) {

    return{
      agregarClase: function(clase,id){
        return $http({
          method: 'POST',
          url: 'http://localhost:3000/teachers/1/courses/'+id+'/classrooms',
          data: clase
        });
      },

      mostrarClases: function(id){
        return $http({
          method: 'GET',
          url:'http://localhost:3000/teachers/1/courses/'+id+'/classrooms',
        });
      },

      eliminarClases: function(idco,idca){
        return $http({
          method: 'DELETE',
          url:'http://localhost:3000/teachers/1/courses/'+idco+'/classrooms/'+idca,
        });
      }
    }


    // AngularJS will instantiate a singleton by calling "new" on this function
  });
