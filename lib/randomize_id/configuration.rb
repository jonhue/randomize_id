module RandomizeId

    class << self
        attr_accessor :configuration
    end

    def self.configure
        self.configuration ||= Configuration.new
        yield configuration
    end

    class Configuration

        attr_accessor :auto

        def initialize
            @auto = false
        end

    end
end
