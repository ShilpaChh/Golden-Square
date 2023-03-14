require "task_list"


RSpec.describe TaskList do

    context "initially" do
        it "has an empty list of tasks" do
        task_list = TaskList.new
        expect(task_list.all).to eq []
        # expect(task_list.all).to be_empty
        end
    end

    it "has an empty list of comeplete tasks" do
        task_list = TaskList.new
        expect(task_list.complete).to eq []
    end

end