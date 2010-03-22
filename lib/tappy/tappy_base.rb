require 'sinatra/base'
require 'rubygems'
require 'typhoeus'
require 'json'

module Tappy
  class TappyBase < Sinatra::Base
    set :twitter_host, "http://api.twitter.com"
    set :filter, "Tappy::AgentFilter"
    set :filter_options, ENV["TAPPY_OPTIONS"] || "foursquare"
    
    helpers do 
      def handle_request(url, request_params={}, params={})
        request_params[:timeout] = 15000
        request_params[:headers] = {"Authorization" => request.env["HTTP_AUTHORIZATION"]}
        request_params[:params]  = params
        Typhoeus::Request.run(url, request_params)
      end
    end

    get "/" do
      "Hello!"
    end

    get %r{^(.+)$} do |url|
      url = options.twitter_host + url
      req_params = {:method => :get}
      response = handle_request(url, req_params)

      filter = Object.class_eval(options.filter).new(options.filter_options)
      filter.filter(response)
    end

    post %r{^(.+)$} do |url|
      url = options.twitter_host + url
      req_params = {:method => :post}
      handle_request(url, req_params, params).body
    end
  end
end