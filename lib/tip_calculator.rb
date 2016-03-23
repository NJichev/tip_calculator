require 'tip_calculator/version'
require 'json'
require 'uri'
require 'net/http'

# Our code wrapper
module TipCalculator
  attr_reader :args

  # Our tip class
  class Tip
    def initialize(args = {}, uri = nil)
      @args = args
      @args.merge(default_args)
      @uri = uri
    end

    def total
      puts "Response is : #{hash_response}"
      hash_response['amount_with_tip']
    end

    private

    def hash_response
      JSON.parse(response.body)
    end

    def response
      req = Net::HTTP::Post.new(uri)
      req.set_form_data(@args)

      res = Net::HTTP.start(uri.hostname, uri.port) do |http|
        http.request(req)
      end
      res
    end

    def default_args
      {
        'amount' => 10.0,
        'tip' => 15
      }
    end

    def uri
      @uri || URI.parse('http://office.code-runners.com:8888')
    end
  end
end