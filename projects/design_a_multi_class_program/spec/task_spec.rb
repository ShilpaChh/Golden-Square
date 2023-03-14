require "task"


RSpec.describe "Task" do

    it "contructs" do
        task = Task.new("Walk the dog")
        expect(task.title).to eq "Walk the dog"
    end

    it "is initially not complete" do
        task = Task.new("Walk the dog")
        # expect(task.complete?).to eq false
        # or use as:
        expect(task.complete?).to be_falsy
    end

    it "it can be marked complete" do
        task = Task.new("Walk the dog")
        task.mark_complete
        # expect(task.complete?).to eq true
        # or use as:
        expect(task.complete?).to be_truthy
    end

end