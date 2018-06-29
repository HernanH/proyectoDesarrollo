'use strict';

/**
 * @ngdoc function
 * @name servicecourseApp.controller:ClassroomCtrl
 * @description
 * # ClassroomCtrl
 * Controller of the servicecourseApp
 */
angular.module('servicecourseApp')
  .controller('ClassroomCtrl', function ($scope,$location,clase,idco,idca) {
    this.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ];

    var vm = this;
    vm.plantilla = {
    	url: 'views/plantilla.html'
    };


    $scope.clase={}
    $scope.clase2={}
    //$scope.clase.id=idco.text


    $scope.verClases = function(){
      // $location.path( "/formulario" );
      clase.mostrarClases(idco.text)
      .then(function(respuesta) {
        console.log(respuesta)
        $scope.clase2=respuesta.data
  		},
  		function(error) { // optional
        console.log(error)
  		});
      console.log($scope.clase2)
    }


   $scope.borrarClases=function(id){
     clase.eliminarClases(idco.text,id)
     .then(function(respuesta){
      console.log(respuesta)
    },
    function(error){
      console.log(error)
    });
    console.log($scope.course)

    
    clase.mostrarClases(idco.text)
      .then(function(respuesta) {
        console.log(respuesta)
        $scope.clase2=respuesta.data
  		},
  		function(error) { // optional
        console.log(error)
  		});
      console.log($scope.clase2)

   },


   $scope.crearClases = function(){
      clase.agregarClase($scope.clase,idco.text)
      .then(function(respuesta) {
        console.log(respuesta)
  		},
  		function(error) { // optional
        console.log(error)
  		});
      console.log($scope.clase)

      clase.mostrarClases(idco.text)
      .then(function(respuesta) {
        console.log(respuesta)
        $scope.clase2=respuesta.data
  		},
  		function(error) { // optional
        console.log(error)
  		});
      console.log($scope.clase2)
    }


  $scope.verVideos=function(idcla){
    idca.text=idcla;
    $location.url('/multimedia');
  }


  });
