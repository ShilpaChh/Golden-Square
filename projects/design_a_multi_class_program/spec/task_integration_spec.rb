require "task_list"
require "task"

RSpec.describe "Task Integration" do

    it "adds tasks and lists them out" do
        task_list = TaskList.new
        task_1 = Task.new("Walk the cat")
        task_2 = Task.new("Walk the dog")
        task_list.add(task_1)
        task_list.add(task_2)
        expect(task_list.all).to eq [task_1, task_2]
    end
       
    context ' when we mark a task as comeplete' do
        it "doesn't show in the main task list" do
        task_list = TaskList.new
        task_1 = Task.new("Walk the cat")
        task_2 = Task.new("Walk the dog")
        task_list.add(task_1)
        task_list.add(task_2)
        task_2.mark_complete
        expect(task_list.all).to eq [task_1]
        end
    end

    context ' when we mark a task as comeplete' do
        it "it shows up in the completed task list" do
        task_list = TaskList.new
        task_1 = Task.new("Walk the cat")
        task_2 = Task.new("Walk the dog")
        task_list.add(task_1)
        task_list.add(task_2)
        task_2.mark_complete
        expect(task_list.complete).to eq [task_2]
        end
    end

end
