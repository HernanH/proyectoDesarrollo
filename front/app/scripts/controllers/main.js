'use strict';

/**
 * @ngdoc function
 * @name servicecourseApp.controller:MainCtrl
 * @description
 * # MainCtrl
 * Controller of the servicecourseApp
 */
angular.module('servicecourseApp')
  .controller('MainCtrl', function ($scope, $location, course) {
    this.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ];

    var vm = this;
    vm.plantilla = {
    	url: 'views/plantilla.html'
    };


    $scope.course ={}

    $scope.irCursos=function(){
      $location.url('/cursos');
    }


    $scope.mirarCurso=function(){
      // $location.path( "/formulario" );
      video.mostrarCursos(idco.text,idca.text)
      .then(function(respuesta) {
        console.log(respuesta)
        $scope.course=respuesta.data
  		},
  		function(error) { // optional
        console.log(error)
  		});
      console.log($scope.course)
   }

    $scope.crearCurso = function(){
      // $location.path( "/formulario" );
      course.agregarCurso($scope.course)
      .then(function(respuesta) {
        console.log(respuesta)
  		},
  		function(error) { // optional
        console.log(error)
  		});
      console.log($scope.course)
    }
  });
