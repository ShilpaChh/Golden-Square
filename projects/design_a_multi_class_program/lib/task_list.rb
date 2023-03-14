class TaskList

    def initialize
        @tasks = []
    end

    def add(task)
        @tasks << task
    end
    
    def all
    # returns a list of Task instances
    # but only the non-completed ones
        # return @tasks.reject do |task| task.complete?
        # end
        # or use as below:
        return @tasks.reject(&:complete?)
    end
    
    def complete
    # returns a list of Task instances
    # but only the ompleted ones
        return @tasks.select(&:complete?)
    end
    
end