class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

class Stack
    attr_accessor :data, :node1, :node2, :node3

    def initialize
        @data = nil
        @node1 = node1
        @node2 = node2
        @node3 = node3
    end

    def nodes
        node1 = LinkedListNode.new(37)
        node2 = LinkedListNode.new(99, node1)
        node3 = LinkedListNode.new(12, node2)
    end

    def push(value)
        @data = LinkedListNode.new(value, @data)
    end

    def pop
        if @data
            puts "#{data.value}\n"
            @data = @data.next_node
        else
            puts "nil\n"
        end
    end

    def reverse
        reversed = Stack.new

        current_node = @data
        while current_node
            reversed.push(current_node.value)
            current_node = current_node.next_node
        end
        reversed
    end

    def print
        current_node = @data
        while current_node
            puts "#{current_node.value} -->"
            current_node = current_node.next_node
        end
        puts "nil\n"
    end
end


stack = Stack.new


stack.push(37)

stack.push(21)

stack.push(99)

stack.print
stack.reverse.print




# Pops (removes) the TOP number from the stack (2)
stack.pop


# Pops the remaining number from the stack (1)
stack.pop


# Tries to pop the TOP number from the stack,
# but it is empty so it returns nil
stack.pop
stack.print