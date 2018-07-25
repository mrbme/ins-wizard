class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
   def index
    @hotels = HTTParty.get('https://shielded-wave-66393.herokuapp.com',
    :headers =>{'Content-Type' => 'application/json'} )
  end
  
end
