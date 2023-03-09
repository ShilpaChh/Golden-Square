require "todo_list"

RSpec.describe TodoList do
    context "given no tasks" do
        it "has an empty list" do 
            todo_list = TodoList.new
            expect(todo_list.list).to eq []
        end
    end

    context "given a task" do
        it "has the task in the list" do 
            todo_list = TodoList.new
            todo_list.add("Wash the car")
            expect(todo_list.list).to eq ["Wash the car"]
        end
    end

    context "given two tasks" do
        it "has the task in the list" do 
            todo_list = TodoList.new
            todo_list.add("Wash the car")
            todo_list.add("Weekly grocery shopping")  
            expect(todo_list.list).to eq ["Wash the car", "Weekly grocery shopping"]
        end
    end

    context "when a task gets completed" do
        it "remove the task from the list" do 
            todo_list = TodoList.new
            todo_list.add("Wash the car")
            todo_list.add("Weekly grocery shopping")  
            todo_list.complete("Wash the car")  
            expect(todo_list.list).to eq ["Weekly grocery shopping"]
        end   
    end

    context "when a non-existant task is listed" do
        it "fails" do 
        todo_list = TodoList.new
        todo_list.add("Wash the car")
        expect { todo_list.complete("Help with Meghna's homework") }.to raise_error "No such task."
        end  
    end 

end