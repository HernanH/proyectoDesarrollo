'use strict';

describe('Service: idco', function () {

  // load the service's module
  beforeEach(module('servicecourseApp'));

  // instantiate service
  var idco;
  beforeEach(inject(function (_idco_) {
    idco = _idco_;
  }));

  it('should do something', function () {
    expect(!!idco).toBe(true);
  });

});
