class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/popular_drinks" do
    all = Cocktail.all.to_json
    all
  end
  
 
end
