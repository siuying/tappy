require 'sinatra/base'
require 'rubygems'
require 'typhoeus'
require 'json'

module Tappy
  class TappyBase < Sinatra::Base
    set :twitter_host, 'http://' + (ENV['APIGEE_TWITTER_API_ENDPOINT'] || "api.twitter.com")
    set :twitter_search_host, 'http://' + (ENV['APIGEE_TWITTER_SEARCH_API_ENDPOINT'] || "search.twitter.com")

    set :filter, ENV["TAPPY_FILTER_CLASS"] || "Tappy::AgentFilter"
    set :filter_options, ENV["TAPPY_FILTER_OPTIONS"] || "foursquare"
    
    helpers do 
      def handle_request(url, request_params={}, params={})
        request_params[:timeout] = 15000
        request_params[:headers] = {"Authorization" => request.env["HTTP_AUTHORIZATION"]}
        request_params[:params]  = params
        Typhoeus::Request.run(url, request_params)
      end
    end

    get "/" do
      "Check: <a href='http://github.com/siuying/tappy'>Tappy</a>"
    end
    
    get "/search.json" do
      url = options.twitter_search_host + "/search.json"
      req_params = {:method => :get}
      handle_request(url, req_params, params).body
    end
    
    get %r{^(.+)$} do |url|
      url = options.twitter_host + url
      req_params = {:method => :get}
      response = handle_request(url, req_params)

      filter = Object.class_eval(options.filter).new(options.filter_options)
      filter.filter(response.body)
    end

    post %r{^(.+)$} do |url|
      url = options.twitter_host + url
      req_params = {:method => :post}
      handle_request(url, req_params, params).body
    end
  end
end