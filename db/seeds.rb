# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Izi to "new" and "save" ingredients
i1 = Ingredient.create(name: 'Rhum')
i2 = Ingredient.create(name: 'Mint')
i3 = Ingredient.create(name: 'Lemon')
i4 = Ingredient.create(name: 'Tonic')
i5 = Ingredient.create(name: 'Ice')

# Izi to "new" and "save" cocktails
c1 = Cocktail.create(name: 'Mojito')
c2 = Cocktail.create(name: 'Virgin Mojito')

# to create dose, we need description + ingredient object + cocktail object
Dose.create(description: '6CL', ingredient: i1, cocktail: c1)
Dose.create(description: '12 Leaves', ingredient: i2, cocktail: c1)
Dose.create(description: '1 Lemon', ingredient: i3, cocktail: c1)
Dose.create(description: '15GR', ingredient: i5, cocktail: c1)

Dose.create(description: '6CL', ingredient: i4, cocktail: c2)
Dose.create(description: '12 Leaves', ingredient: i2, cocktail: c2)
Dose.create(description: '1 Lemon', ingredient: i3, cocktail: c2)
Dose.create(description: '15GR', ingredient: i5, cocktail: c2)
