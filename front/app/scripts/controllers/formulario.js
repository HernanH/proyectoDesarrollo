'use strict';

/**
 * @ngdoc function
 * @name servicecourseApp.controller:FormularioCtrl
 * @description
 * # FormularioCtrl
 * Controller of the servicecourseApp
 */
angular.module('servicecourseApp')
  .controller('FormularioCtrl', function () {
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
