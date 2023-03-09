# File: spec/reminder1_spec.rb

require 'reminder1'

RSpec.describe Reminder1 do
  context "when no task is set" do #for documentation process
    it "fails" do
      reminder1 = Reminder1.new("Kay")
      expect { reminder1.remind() }.to raise_error "No reminder set!"
    end
  end
end