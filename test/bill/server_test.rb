
module Bill

  class ServerTest < MiniTest::Unit::TestCase
    include Rack::Test::Methods
    
    def app
      Bill::Server
    end
    
    def setup
      WebMock.allow_net_connect!
    end
    
    def teardown
      WebMock.disable_net_connect!
    end
    
    def test_root
      get '/'
      assert last_response.ok?
      assert_match '<h1>Bill</h1>', last_response.body
    end
    
  end
  
end
