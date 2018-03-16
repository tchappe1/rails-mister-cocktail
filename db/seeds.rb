require 'json'
require 'open-uri'
Dose.destroy_all
Cocktail.destroy_all
Ingredient.destroy_all

response = open("https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list").read
json = JSON.parse(response)
json["drinks"].each do |j|
 Ingredient.create([{ name: j['strIngredient1']}])
end

Cocktail.create(name: "morjito")
Cocktail.create(name: "blue lagon")
Cocktail.create(name: "apple juice")

Dose.create(description: "20dl", cocktail: Cocktail.all.sample, ingredient: Ingredient.all.sample)
Dose.create(description: "20dl", cocktail: Cocktail.all.sample, ingredient: Ingredient.all.sample)
Dose.create(description: "20dl", cocktail: Cocktail.all.sample, ingredient: Ingredient.all.sample)
Dose.create(description: "20dl", cocktail: Cocktail.all.sample, ingredient: Ingredient.all.sample)
Dose.create(description: "20dl", cocktail: Cocktail.all.sample, ingredient: Ingredient.all.sample)
Dose.create(description: "20dl", cocktail: Cocktail.all.sample, ingredient: Ingredient.all.sample)



# TODO: Write a seed to insert 10 posts in the database fetched from the Hacker News API.
