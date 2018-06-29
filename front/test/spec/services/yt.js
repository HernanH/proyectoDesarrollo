'use strict';

describe('Service: yt', function () {

  // load the service's module
  beforeEach(module('servicecourseApp'));

  // instantiate service
  var yt;
  beforeEach(inject(function (_yt_) {
    yt = _yt_;
  }));

  it('should do something', function () {
    expect(!!yt).toBe(true);
  });

});
