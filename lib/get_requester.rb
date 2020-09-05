require 'json'
require 'net/http'
require 'open-uri'




class GetRequester

    URL = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"
    
    # JSON = self.parse_json

    def initialize(url_string)
        @url_string = url_string
    end
    
    def get_response_body
        uri = URI.parse(URL)
        response = Net::HTTP.get_response(uri)
        response.body
    end


    
    def parse_json
        response_parsed = JSON.parse(self.get_response_body)
        response_parsed

    end


end