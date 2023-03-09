# File: lib/reminder.rb

class Reminder
    def initialize(name)
      @name = name
    end
  
    def remind_me_to(task)
      @task = task
    end
  
    def remind()
      return "#{@task}, #{@name}!"
    end
  end

=begin
reminder = Reminder.new("Kay")
reminder.remind_me_to("Walk the dog")
puts reminder.remind()
=end