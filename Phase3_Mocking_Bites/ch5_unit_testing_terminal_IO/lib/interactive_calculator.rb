class InteractiveCalculator

    def initialize(terminal_io)
        @terminal_io = terminal_io
    end

    def run
        @terminal_io.puts "Hello. I will subtract two numbers."
        @terminal_io.puts "Please enter a number"
        # number_1 = @terminal_io.gets.to_i # to convert the string form gets to number
        number_1 = get_number # to have the fail condition to work
        @terminal_io.puts "Please enter another number"
        number_2 = get_number
        @terminal_io.puts "Here is your result:"

        # @terminal_io.puts "#{number_1} - #{number_2} = #{number_1 - number_2}" => refactor it as shown below and with the new method
        @terminal_io.puts format_sum(number_1, number_2)
    end

    private

    def get_number
        response = @terminal_io.gets
        return response.to_i if response.to_i.to_s == response
        # "2" - "2" 2 "2" string to number and then to string again
        # "jim" - "jim" 0 "jim" => irb => "jim".to_i returns nil
        fail "You must enter a number!"
    end

    def format_sum(num_1, num_2)
        result = num_1 - num_2
        return "#{num_1} - #{num_2} = #{result}"
    end

end



# interactive_calculator = InteractiveCalculator.new(Kernel)
# interactive_calculator.run

# # Hello. I will subtract two numbers.
# # Please enter a number
# # 4
# # Please enter another number
# # 3
# # Here is your result:
# # 4 - 3 = 1