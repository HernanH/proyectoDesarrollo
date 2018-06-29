'use strict';

describe('Controller: MultimediaCtrl', function () {

  // load the controller's module
  beforeEach(module('servicecourseApp'));

  var MultimediaCtrl,
    scope;

  // Initialize the controller and a mock scope
  beforeEach(inject(function ($controller, $rootScope) {
    scope = $rootScope.$new();
    MultimediaCtrl = $controller('MultimediaCtrl', {
      $scope: scope
      // place here mocked dependencies
    });
  }));

  it('should attach a list of awesomeThings to the scope', function () {
    expect(MultimediaCtrl.awesomeThings.length).toBe(3);
  });
});
