const assert = require('chai').assert;

function greet() {
  return 'Hello from Docker!';
}

describe('Unit Tests', () => {
  it('should return the correct greeting message', () => {
    const message = greet();
    assert.equal(message, 'Hello from Docker!');
  });
});
