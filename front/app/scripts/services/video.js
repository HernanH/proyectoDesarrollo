'use strict';

/**
 * @ngdoc service
 * @name servicecourseApp.video
 * @description
 * # video
 * Service in the servicecourseApp.
 */
angular.module('servicecourseApp')
  .service('video', function ($http) {
    // AngularJS will instantiate a singleton by calling "new" on this function


    return{
      agregarVideo: function(video,idco,idca){
        return $http({
          method: 'POST',
          url: 'http://localhost:3000/teachers/1/courses/'+idco+'/classrooms/'+idca+'/videos',
          data: video
        });
      },

      mostrarVideos: function(idco,idca){
        return $http({
          method: 'GET',
          url:'http://localhost:3000/teachers/1/courses/'+idco+'/classrooms/'+idca+'/videos',
        });
      },

      eliminarVideos: function(idco,idca,id){
        return $http({
          method: 'DELETE',
          url:'http://localhost:3000/teachers/1/courses/'+idco+'/classrooms/'+idca+'/videos/'+id,
        });
      }


    }
  });
