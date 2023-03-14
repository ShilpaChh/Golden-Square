class Task
    def initialize(title)
        @title = title
        @complete = false
    end
    
    def title
    # returns the title as string
        return @title
    end
    
    def mark_complete
    # Marks the task as comeplete
    # returns nothing
        @complete = true
    end
    
    def complete?
    # returns true if marked completed, otherwise false
        return @complete
    end
    
end