class HomeController < ApplicationController
 
  def index
    @address = Address.get('http://ip-api.com/json')
  end

end

