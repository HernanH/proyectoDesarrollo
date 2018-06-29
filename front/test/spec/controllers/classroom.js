'use strict';

describe('Controller: ClassroomCtrl', function () {

  // load the controller's module
  beforeEach(module('servicecourseApp'));

  var ClassroomCtrl,
    scope;

  // Initialize the controller and a mock scope
  beforeEach(inject(function ($controller, $rootScope) {
    scope = $rootScope.$new();
    ClassroomCtrl = $controller('ClassroomCtrl', {
      $scope: scope
      // place here mocked dependencies
    });
  }));

  it('should attach a list of awesomeThings to the scope', function () {
    expect(ClassroomCtrl.awesomeThings.length).toBe(3);
  });
});
