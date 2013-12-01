module Datr
  
  class Queue

    def initialize
      @elements = []
    end

    def put(elem)
      @elements << elem
    end

    def pop
      @elements.delete_at(0)
    end

    def first
      @elements.first
    end

  end

end
