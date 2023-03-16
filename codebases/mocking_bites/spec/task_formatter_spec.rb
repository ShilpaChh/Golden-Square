require "task_formatter"

RSpec.describe "TaskFormatter" do

    it "formats a task entry when it is not complete" do
        fake_task = double(:fake_task_entry, complete?: false , title: 'title')
        task_formatter = TaskFormatter.new(fake_task)
        expect(task_formatter.format).to eq "- [ ] title"
      end

      it "formats a task entry when it is complete" do
        fake_task = double(:fake_task_entry, complete?: true , title: 'title')
        task_formatter = TaskFormatter.new(fake_task)
        expect(task_formatter.format).to eq "- [x] title"
      end

 
    
end

