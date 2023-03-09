# File: lib/counter.rb

class Counter
    def initialize
      @count = 0
    end
  
    def add(num)
      @count += num
    end
  
    def report
      return "Counted to #{@count} so far."
    end
  end


  counter = Counter.new
  counter.add(7)
  counter.add(18)
  counter.add(2)
  #puts counter.report
