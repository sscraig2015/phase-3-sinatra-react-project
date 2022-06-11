require 'pry'
require 'rest-client'

puts "🌱 Seeding spices..."


ingredients_resp = RestClient.get 'https://the-cocktail-db.p.rapidapi.com/popular.php', headers = {'X-RapidAPI-Key' => 'a113d37a21mshbac3746ae281e07p1e1a57jsnf4a480d10a62'}
ingredients_hash = JSON.parse(ingredients_resp)



ingredients_hash["drinks"].each do |cocktail|
    
    Cocktail.create(
        name: cocktail["strDrink"],
        description: cocktail["strInstructions"],
    )
    
end



puts "✅ Done seeding!"
