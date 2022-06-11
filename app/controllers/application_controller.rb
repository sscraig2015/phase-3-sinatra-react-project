class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/popular_drinks" do
    all = Cocktail.all.to_json
    all
  end

  get "/alcohol/:name" do
    cocktail = Cocktail.all.find_by name: params[:name]
    cocktail.to_json
end
  
 
end
