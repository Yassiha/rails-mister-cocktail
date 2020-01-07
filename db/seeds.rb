# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
result_serialized = open(url).read
result = JSON.parse(result_serialized)

result.first[1].each do |ingre|
  Ingredient.create(name: ingre.values[0])
end

Ingredient.create(name: 'Ice')

# Izi to create cocktail ;
# Cocktail.create(name: 'Mojito')

# to create dose :
# Dose.create(description: '6CL',
#             ingredient: "object Ingredient",
#             cocktail: "object cocktail")
