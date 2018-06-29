'use strict';

/**
 * @ngdoc overview
 * @name servicecourseApp
 * @description
 * # servicecourseApp
 *
 * Main module of the application.
 */
angular
  .module('servicecourseApp', [
    'ngAnimate',
    'ngAria',
    'ngCookies',
    'ngMessages',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch'
  ])
  .config(function ($routeProvider) {
    $routeProvider
      .when('/', {
        templateUrl: 'views/main.html',
        controller: 'MainCtrl',
        controllerAs: 'main'
      })
      .when('/about', {
        templateUrl: 'views/about.html',
        controller: 'AboutCtrl',
        controllerAs: 'about'
      })
      .when('/plantilla', {
        templateUrl: 'views/plantilla.html',
        controller: 'PlantillaCtrl',
        controllerAs: 'plantilla'
      })
      .when('/formulario', {
        templateUrl: 'views/formulario.html',
        controller: 'FormularioCtrl',
        controllerAs: 'formulario'
      })
      .when('/cursos', {
        templateUrl: 'views/cursos.html',
        controller: 'CursosCtrl',
        controllerAs: 'cursos'
      })
      .when('/classroom', {
        templateUrl: 'views/classroom.html',
        controller: 'ClassroomCtrl',
        controllerAs: 'classroom'
      })
      .when('/multimedia', {
        templateUrl: 'views/multimedia.html',
        controller: 'MultimediaCtrl',
        controllerAs: 'multimedia'
      })
      .when('/plantilla', {
        templateUrl: 'views/plantilla.html',
        controller: 'PlantillaCtrl',
        controllerAs: 'plantilla'
      })
      .when('/formulario', {
        templateUrl: 'views/formulario.html',
        controller: 'FormularioCtrl',
        controllerAs: 'formulario'
      })
      .otherwise({
        redirectTo: '/'
      });
  });
