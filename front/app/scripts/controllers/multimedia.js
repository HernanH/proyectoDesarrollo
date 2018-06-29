'use strict';

/**
 * @ngdoc function
 * @name servicecourseApp.controller:MultimediaCtrl
 * @description
 * # MultimediaCtrl
 * Controller of the servicecourseApp
 */
angular.module('servicecourseApp')
  .controller('MultimediaCtrl', function ($scope,$location,$sce,video,idco,idca,yt) {
    this.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ];


    var vm = this;
    vm.plantilla = {
    	url: 'views/plantilla.html'
    };

    $scope.video={}
    $scope.video2={}
    $scope.id={}
    $scope.trustSrc=function(src){
      return $sce.trustAsResourceUrl(src);
    }



    $scope.visualizarVideos = function(){
      // $location.path( "/formulario" );
      video.mostrarVideos(idco.text,idca.text)
      .then(function(respuesta) {
        console.log(respuesta)
        $scope.video2=respuesta.data
        for (var i=0;i<$scope.video2.length;i++){
          $scope.video2[i].url= 'https://www.youtube.com/embed/'+$scope.video2[i].url
        }
  		},
  		function(error) { // optional
        console.log(error)
  		});
      //console.log($scope.video2)
      console.log($scope.video2)
    },


    /*$scope.crearVideo=function(){
      video.agregarVideo($scope.video,idco.text,idca.text)
      .then(function(respuesta) {
        console.log(respuesta)
  		},
  		function(error) { // optional
        console.log(error)
  		});
      console.log($scope.video)
    }*/


    $scope.borrarVideos=function(id){
      video.eliminarVideos(idco.text,idca.text,id)
      .then(function(respuesta){
       console.log(respuesta)
     },
     function(error){
       console.log(error)
     });
     console.log($scope.video)

     
     video.mostrarVideos(idco.text,idca.text)
     .then(function(respuesta) {
       console.log(respuesta)
       $scope.video2=respuesta.data
       for (var i=0;i<$scope.video2.length;i++){
         $scope.video2[i].url= 'https://www.youtube.com/embed/'+$scope.video2[i].url
       }
     },
     function(error) { // optional
       console.log(error)
     });
     console.log($scope.video2)
 
  
 
    },


    $scope.crearVideo=function(){
      $scope.video.url=$scope.video.url.split("=")[1]
      video.agregarVideo($scope.video,idco.text,idca.text)
      .then(function(respuesta) {
        console.log(respuesta)
  		},
  		function(error) { // optional
        console.log(error)
  		});
      console.log($scope.video)

      video.mostrarVideos(idco.text,idca.text)
      .then(function(respuesta) {
        console.log(respuesta)
        $scope.video2=respuesta.data
        for (var i=0;i<$scope.video2.length;i++){
          $scope.video2[i].url= 'https://www.youtube.com/embed/'+$scope.video2[i].url
        }
  		},
  		function(error) { // optional
        console.log(error)
  		});
      console.log($scope.video2)
    }

    /*$scope.cortarURL=function(url){




    }*/


    
    
    /*$scope.verVideos=function(){
    youtubeFactory.getVideoById({
      videoId: "xcJtL7QggTI",
      key: "AIzaSyCFeXgy6Boj4bUHrBFVDsbsCUWg8Pzb2Yc",
  }).then(function (respuesta) {
          console.log(respuesta)
  }).catch(function (error) {
          console.log(error)
  });}*/


        

    
});

angular.module("jtt_youtube",["appfrontendApp"])
 .controller('appController', function($scope, youtubeFactory){
    youtubeFactory.getVideoById({
      videoId: "di60mvq5ImA",
      key: "AIzaSyCFeXgy6Boj4bUHrBFVDsbsCUWg8Pzb2Yc",
  }).then(function (respuesta) {
          console.log(respuesta)
  }).catch(function (error) {
          console.log(error)
  });
});

