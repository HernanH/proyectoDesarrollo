'use strict';

/**
 * @ngdoc function
 * @name servicecourseApp.controller:CursosCtrl
 * @description
 * # CursosCtrl
 * Controller of the servicecourseApp
 */
angular.module('servicecourseApp')
  .controller('CursosCtrl', function ($scope,$location,course,idco) {
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


    $scope.borrarCurso=function(id){
      course.eliminarCurso(id)
      .then(function(respuesta){
        console.log(respuesta)
      },
      function(error){
        console.log(error)
      });
      console.log($scope.course)

      

   
    
      course.mostrarCursos()
      .then(function(respuesta) {
        console.log(respuesta)
        $scope.course=respuesta.data
  		},
  		function(error) { // optional
        console.log(error)
  		});
      console.log($scope.course)

      
    },

 
    $scope.verCursos = function(){
      // $location.path( "/formulario" );
      course.mostrarCursos()
      .then(function(respuesta) {
        console.log(respuesta)
        $scope.course=respuesta.data
  		},
  		function(error) { // optional
        console.log(error)
  		});
      console.log($scope.course)
    },

    

    $scope.verClases=function(id){
      idco.text=id;
      $location.url('/classroom');
    }

    //$scope.$watch('identificador',function(){
    //  $scope.$emit('share',identificador);
    //})

  });

