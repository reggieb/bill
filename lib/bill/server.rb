require 'sinatra'
module Bill
  # Bill::Server is a small Sinatra Rack Application that will serve a page (main)
  # used to display the data gathered from a url.
  class Server < Sinatra::Application
    
    get '/' do
      data = Data.for 'http://safe-plains-5453.herokuapp.com/bill.json'
      erb :main, :locals => {:data => data}
    end
    
  end
end
