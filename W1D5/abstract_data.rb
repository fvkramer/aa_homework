class Stack
  def initialize
    @stack = [] #creates ivar to store stack here!
  end

  def push(el)
    @stack << el# adds an element to the stack
  end

  def pop
     last = @stack.last
     @stack = @stack[0...-1]
     last
    # removes one element from the stack
  end

  def peek
    @stack.last# returns but doesn't remove top element from stack
  end
end

class Queue
  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue.push(el)
  end

  def dequeue
    @queue.shift
  end

  def peek
    @queue.first
  end
end

class Map
  def initialize
    @result_array = []
  end

  def set(key, value)
    key_index = @result_array.index {|el| el[0] == key}
    if key_index
      @result_array[key_index][1] = value
      @result_array
    else
      @result_array.push([key,value])
    end
  end

  def get(key)
    @result_array.each do |el|
      return el[1] if el[0] == key
    end
    nil
  end

  def delete(key)
    value = get(key)
    @result_array.reject! {|el| el[0] == value}
    value
  end

  def show
    @result_array
  end
end
