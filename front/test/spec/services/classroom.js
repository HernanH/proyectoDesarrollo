'use strict';

describe('Service: classroom', function () {

  // load the service's module
  beforeEach(module('servicecourseApp'));

  // instantiate service
  var classroom;
  beforeEach(inject(function (_classroom_) {
    classroom = _classroom_;
  }));

  it('should do something', function () {
    expect(!!classroom).toBe(true);
  });

});
