path = File.expand_path(File.dirname(__FILE__))
$:.unshift(path) unless $:.include?(path)

require 'tappy/tappy_base'
require 'tappy/filter/filter'
require 'tappy/filter/agent_filter'

module Tappy
  VERSION = '1.0.4'
end
