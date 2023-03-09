class StringBuilder
    def initialize
      @str = ""
    end
  
    def add(str)
      @str += str
    end
  
    def size
      return @str.length
    end
  
    def output
      return  @str
    end
  end

=begin
  str_builder = StringBuilder.new
  str_builder.add("Shilpa")
  puts str_builder.output
=end
