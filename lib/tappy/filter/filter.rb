module Tappy
  class Filter
    attr_accessor :options
    
    def initialize(options)
      @options = options
      puts "filter options: #{options}"
    end
    
    def filter(response)
      response
    end
  end
end