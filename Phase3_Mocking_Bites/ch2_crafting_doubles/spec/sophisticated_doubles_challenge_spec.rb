# Challenge
# Create doubles to pass this test.

RSpec.describe "doubles challenge" do
    it "creates a sophisticated double" do
      task_list = double :fake_task_list # ...
      task = double :fake_task # ...
      allow(task_list).to receive(:add).with(task)
      allow(task_list).to receive(:list).and_return([task])
      allow(task_list).to receive(:count).and_return(1)

      allow(task_list).to receive(:clear).and_return(:success)
      # expect(task_list).to receive(:clear).and_return(:success)
      # both allow and expect work
          # expected: :success
          # got: [:success] -> discard big brackets

  
      # Don't edit below
      task_list.add(task)
      expect(task_list.list).to eq [task]
      expect(task_list.count).to eq 1
      expect(task_list.clear).to eq :success
    end
  end
