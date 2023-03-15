require "task_list"

RSpec.describe TaskList do
  it "initially has an empty list" do
    task_list = TaskList.new
    expect(task_list.all).to eq []
  end

  it "is initially not all complete" do
    task_list = TaskList.new
    expect(task_list.all_complete?).to eq false
  end

  # Unit test `#all` and `#all_complete?` behaviour

############### MOCKING TEST ############### 
# There is a codebase in codebases/mocking_bites.
# Clone this repository and open the codebases/mocking_bites directory in your editor.
# There are some classes and tests in there representing a TaskList program. There are some unit tests for TaskList in spec/task_list_spec.rb. 
# They currently avoid testing any behaviour that might use the Task class.
# Use mocking techniques to add some tests that fully test the behaviour of TaskList.

  context "add task - via mocking" do
    it "mock adding tasks" do
      task_list = TaskList.new
      task_1 = double :fake_add_task
      task_list.add(task_1)
      # task_not_all_complete = double :task_not_complete, all_complete?
      expect(task_list.all).to eq [task_1]
    end
  end

  context "when task has started check status - via mocking" do
    it "is completed" do
      task_list = TaskList.new
      task_1 = double :fake_task, complete?: true
      task_list.add(task_1)
      expect(task_list.all_complete?).to eq true
    end
  end


end
