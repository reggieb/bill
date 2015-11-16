require 'net/http'
require 'json'
module Bill
  # Bill::Data is used to gather data from a given url and to package
  # that data into a set of nested objects.
  class Data
    
    def self.for(url)
      data = new url
      data.objects
    end

    attr_reader :url

    def initialize(url)
      @url = url
    end
    
    def uri
      URI.parse(url)
    end
    
    def response
      @response ||= Net::HTTP.get_response(uri) 
    end
    
    def body
      response.body
    end
    
    def objects
      JSON.parse(body, object_class: OpenStruct)
    end
    
  end
end
