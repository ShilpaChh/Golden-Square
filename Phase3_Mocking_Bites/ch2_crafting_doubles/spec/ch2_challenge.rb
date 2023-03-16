# Challenge
# Create doubles to pass this test.

RSpec.describe "doubles challenge" do
    xit "creates a sophisticated double" do
      task_list = # ...
      task = # ...
  
      # Don't edit below
      task_list.add(task)
      expect(task_list.list).to eq [task]
      expect(task_list.count).to eq 1
      expect(task_list.clear).to eq :success
    end
  end