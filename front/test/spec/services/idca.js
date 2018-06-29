'use strict';

describe('Service: idca', function () {

  // load the service's module
  beforeEach(module('servicecourseApp'));

  // instantiate service
  var idca;
  beforeEach(inject(function (_idca_) {
    idca = _idca_;
  }));

  it('should do something', function () {
    expect(!!idca).toBe(true);
  });

});
