require 'test_helper'

module Bill
  class DataTest < MiniTest::Unit::TestCase
    
    def setup
      mock_successful_request
    end

    def test_request   
      assert_kind_of Net::HTTPSuccess, data.response  
    end
    
    def test_body
      assert_equal json, data.body
    end
    
    def test_objects
      assert_equal payload['foo'], data.objects.foo
    end
    
    def test_for
      assert_equal data.objects, Data.for(url)
    end

    def data
      @data ||= Data.new(url)
    end

    def url
      'http://example.com'
    end

    def payload
      @payload ||= {
        'foo' => 'bar'
      }
    end

    def json
      payload.to_json
    end
    
    def mock_successful_request
      stub_request(:get, url).
        with(:headers => {'Accept'=>'*/*', 'User-Agent'=>'Ruby'}).
        to_return(:status => 200, :body => json, :headers => {})
    end

  end
end
