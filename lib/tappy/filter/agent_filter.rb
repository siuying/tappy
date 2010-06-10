require 'json'
response.body
module Tappy
  class AgentFilter < Filter
    def filter(raw_json)      
      json = JSON.parse(raw_json)
      begin
        if json.class == Array
          filtered = []

          json.each do |item|
            source = item["source"]
            if !source.nil? 
              if source.match(options)
                puts "filtered: #{item["source"]}"
              else
                filtered << item
              end
            else
              return raw_json
            end
          end
          return filtered.to_json
        else
          return raw_json
        end
      rescue
        return raw_json
      end
    end
  end
end