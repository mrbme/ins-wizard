class HomeController < ApplicationController
   def index
     response = HTTParty.get('http://ip-api.com/json')
     obj = JSON.parse(response.body)
     @region = obj["region"]
  end
end

