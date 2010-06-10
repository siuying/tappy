module Tappy
  class Filter
    attr_accessor :options
    
    def initialize(options)
      @options = options
    end
    
    def filter(raw_json)
      raw_json
    end
  end
end