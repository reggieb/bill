require 'sinatra'
module Bill
  class Server < Sinatra::Application
    
    get '/' do
      data = Data.for 'http://safe-plains-5453.herokuapp.com/bill.json'
      erb :main, :locals => {:data => data}
    end
    
  end
end
