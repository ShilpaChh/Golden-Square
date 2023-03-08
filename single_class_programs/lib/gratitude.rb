class Gratitude
    def initialize
        @gratitude = []
    end

    def add(gratitude)
        @gratitude << gratitude
    end

    def format
        prefix = "Be grateful for: "
        formattted_gratitude = @gratitude.join (", ")
        return  prefix + formattted_gratitude
    end

end

