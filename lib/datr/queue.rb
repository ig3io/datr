module Datr
  
  class Queue

    def initialize
      @elements = []
    end

    def insert elem
      @elements << elem
    end

    def remove
      @elements.delete_at(0)
    end

    def first
      @elements.first
    end

    def size
      @elements.size
    end

  end

end
