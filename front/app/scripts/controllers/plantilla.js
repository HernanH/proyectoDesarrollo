'use strict';

/**
 * @ngdoc function
 * @name servicecourseApp.controller:PlantillaCtrl
 * @description
 * # PlantillaCtrl
 * Controller of the servicecourseApp
 */
angular.module('servicecourseApp')
  .controller('PlantillaCtrl', function () {
    this.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ];
    var vm=this;
    vm.plantilla={
      url: 'views/plantilla.html'
    };
  });
