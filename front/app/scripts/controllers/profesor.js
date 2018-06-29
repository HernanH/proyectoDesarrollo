'use strict';

/**
 * @ngdoc function
 * @name servicecourseApp.controller:ProfesorCtrl
 * @description
 * # ProfesorCtrl
 * Controller of the servicecourseApp
 */
angular.module('servicecourseApp')
  .controller('ProfesorCtrl', function ($scope,$location,teacher) {
    this.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ];

    var vm = this;
    vm.plantilla = {
    	url: 'views/plantilla.html'
    };


    $scope.teacher={}



    $scope.crearProfesor = function(){
      // $location.path( "/formulario" );
      teacher.agregarProfesor($scope.teacher)
      .then(function(respuesta) {
        console.log(respuesta)
  		},
  		function(error) { // optional
        console.log(error)
  		});
      console.log($scope.teacher)
    }
  });
