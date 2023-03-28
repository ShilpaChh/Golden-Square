require "interactive_calculator"


RSpec.describe InteractiveCalculator do

        it "subtracts two numbers using the terminal" do
            terminal_io = double :terminal_io

            expect(terminal_io).to receive(:puts).with("Hello. I will subtract two numbers.").ordered
            expect(terminal_io).to receive(:puts).with("Please enter a number").ordered
            expect(terminal_io).to receive(:gets).and_return("4").ordered # asks user to input. REMEMBER gets always returns a string
            expect(terminal_io).to receive(:puts).with("Please enter another number").ordered
            expect(terminal_io).to receive(:gets).and_return("3").ordered
            expect(terminal_io).to receive(:puts).with("Here is your result:").ordered

            expect(terminal_io).to receive(:puts).with("4 - 3 = 1").ordered
            
            interactive_calculator = InteractiveCalculator.new(terminal_io)
            interactive_calculator.run
        end

        it "fails if given a string instead of a number" do
            terminal_io = double :terminal_io

            expect(terminal_io).to receive(:puts).with("Hello. I will subtract two numbers.").ordered
            expect(terminal_io).to receive(:puts).with("Please enter a number").ordered
            expect(terminal_io).to receive(:gets).and_return("jim").ordered # asks user to input. REMEMBER gets always returns a string
            
            interactive_calculator = InteractiveCalculator.new(terminal_io)
            expect { interactive_calculator.run }.to raise_error "You must enter a number!"
        end

        it "fails if given a string instead of the second number" do
            terminal_io = double :terminal_io

            expect(terminal_io).to receive(:puts).with("Hello. I will subtract two numbers.").ordered
            expect(terminal_io).to receive(:puts).with("Please enter a number").ordered
            expect(terminal_io).to receive(:gets).and_return("4").ordered # asks user to input. REMEMBER gets always returns a string
            expect(terminal_io).to receive(:puts).with("Please enter another number").ordered
            expect(terminal_io).to receive(:gets).and_return("jim").ordered # asks user to input. REMEMBER gets always returns a string
            
            interactive_calculator = InteractiveCalculator.new(terminal_io)
            expect { interactive_calculator.run }.to raise_error "You must enter a number!"
        end



end