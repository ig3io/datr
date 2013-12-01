module Datr

  class Stack
    
    def initialize
      @elements = []
    end

    def push elem
      @elements << elem
    end

    def pop
      @elements.delete_at(@elements.size - 1)
    end

    def top
      @elements.last
    end

    def empty?
      @elements.empty?
    end

  end

end
