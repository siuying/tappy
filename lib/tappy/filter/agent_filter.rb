require 'json'

module Tappy
  class AgentFilter < Filter
    def filter(response)      
      json = JSON.parse(response.body)
      begin
        if json.class == Array
          filtered = []

          json.each do |item|
            source = item["source"]
            if !source.nil? 
              if source.match(options)
                puts "filterer: #{item["source"]}"
              else
                filtered << item
              end
            else
              return response.body
            end
          end
          result = filtered.to_json
          result
        else
          response.body
        end
      rescue
        response.body
      end
    end
  end
end