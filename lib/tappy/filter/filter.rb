module Tappy
  class Filter
    attr_accessor :options
    
    def initialize(options)
      @options = options
    end
    
    def filter(response)
      response.body
    end
  end
end