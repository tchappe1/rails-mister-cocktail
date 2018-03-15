# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# db/seeds.rb


Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")

Cocktail.create(name: "morjito")
Cocktail.create(name: "blue lagon")
Cocktail.create(name: "apple juice")

Dose.create(description: "20dl", cocktail_id: 1, ingredient_id: 2)
Dose.create(description: "20dl", cocktail_id: 1, ingredient_id: 3)
Dose.create(description: "20dl", cocktail_id: 2, ingredient_id: 1)
Dose.create(description: "20dl", cocktail_id: 2, ingredient_id: 2)
Dose.create(description: "20dl", cocktail_id: 2, ingredient_id: 3)
Dose.create(description: "20dl", cocktail_id: 3, ingredient_id: 3)



# TODO: Write a seed to insert 10 posts in the database fetched from the Hacker News API.
