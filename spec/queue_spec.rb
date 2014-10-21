require 'minitest/spec'
require 'minitest/autorun'

require 'queue'

describe Queue, 'Testing queue results ' do
  it 'queue enqueue' do
    q = Queue.new()
    q.enqueue(2)
    q.enqueue(10)

    assert "2 10" == q.to_s
  end

  it 'queue dequeue' do
    q = Queue.new()
    q.enqueue(2)
    q.enqueue(10)
    q.dequeue

    assert "10" == q.to_s
  end

end
