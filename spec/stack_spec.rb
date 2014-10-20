require 'minitest/spec'
require 'minitest/autorun'

require 'stack'

describe Stack, 'Testing stack results ' do
  it 'stack push' do
    stack = Stack.new()
    stack.push(3);
    stack.push(2);

    assert "2 3" == stack.to_s
  end

  it 'stack pop' do
    stack = Stack.new()
    stack.push(3);
    stack.push(2);
    stack.push(1);
    stack.pop();

    assert 2 == stack.pop().value
  end
end
