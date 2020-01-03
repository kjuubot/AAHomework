# Exercise 1 - Stack

class Stack
    attr_accessor :stack

    def initialize
      stack = []
    end

    def push(el)
      stack.push(el)
    end

    def pop
      stack.pop
      stack
    end

    def peek
      stack[0]
    end
end

# Exercise 2 - Queue

class Queue
    attr_accessor :queue

    def initialize
      queue = []
    end

    def enqueue(el)
      queue << el
    end

    def dequeue
      queue.shift
      queue
    end

    def peek
      queue[0]
    end
end

# Exercise 3 - Map

class Map
    attr_accessor :map
    
    def initialize(length)
        map = Array.new(length) { Array.new(2) }
    end

    def set(key, value)
        map.each do |pair|
            if pair[0] == key
                pair[1] = value
            else
                map << [key, value]
            end
        end
    end

    def get(key)
        map.each { |pair| return pair if pair[0] == key }
    end

    def delete(key)
        map.each_with_index { |pair, i| map.delete_at(i) if pair[0] == key }
        map
    end

    def show
        p map
    end
end