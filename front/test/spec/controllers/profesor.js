'use strict';

describe('Controller: ProfesorCtrl', function () {

  // load the controller's module
  beforeEach(module('servicecourseApp'));

  var ProfesorCtrl,
    scope;

  // Initialize the controller and a mock scope
  beforeEach(inject(function ($controller, $rootScope) {
    scope = $rootScope.$new();
    ProfesorCtrl = $controller('ProfesorCtrl', {
      $scope: scope
      // place here mocked dependencies
    });
  }));

  it('should attach a list of awesomeThings to the scope', function () {
    expect(ProfesorCtrl.awesomeThings.length).toBe(3);
  });
});
