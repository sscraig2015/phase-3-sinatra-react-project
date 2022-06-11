require 'pry'
require 'rest-client'

puts "🌱 Seeding spices..."


cocktails_resp = RestClient.get 'https://the-cocktail-db.p.rapidapi.com/filter.php?a=Alcoholic', headers = {'X-RapidAPI-Key' => 'a113d37a21mshbac3746ae281e07p1e1a57jsnf4a480d10a62'}
cocktails_hash = JSON.parse(cocktails_resp)



cocktails_hash["drinks"].each do |cocktail|
    
    Cocktail.create(
        name: cocktail["strDrink"],
        description: cocktail["strInstructions"],
    )
    
end



puts "✅ Done seeding!"
