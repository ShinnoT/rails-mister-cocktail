# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#reentrant
#idempotent
#search for activerecords create_or_update OR find_or_create(this one is useful for user email)
Ingredient.destroy_all
Cocktail.destroy_all
Dose.destroy_all

lemon = Ingredient.create(name: "lemon")
ice = Ingredient.create(name: "ice")
orange = Ingredient.create(name: "orange")
gin = Ingredient.create(name: "gin")
rum = Ingredient.create(name: "rum")
tonic = Ingredient.create(name: "tonic")
vodka = Ingredient.create(name: "vodka")
tequila = Ingredient.create(name: "tequila")
milk = Ingredient.create(name: "milk")
kahlua = Ingredient.create(name: "kahlua")

martini = Cocktail.create(name: "martini")
bloody_mary = Cocktail.create(name: "bloody mary")
sour = Cocktail.create(name: "sour")
mojito = Cocktail.create(name: "mojito")
daiquiri = Cocktail.create(name: "daiquiri")


dose1 = Dose.new(description: "6cl of lemon")
dose1.ingredient = lemon
dose1.cocktail = mojito
dose1.save

dose2 = Dose.new(description: "6 cubes of ice")
dose2.ingredient = ice
dose2.cocktail = mojito
dose2.save

dose3 = Dose.new(description: "7cl of kahlua")
dose3.ingredient = kahlua
dose3.cocktail = bloody_mary
dose3.save

dose4 = Dose.new(description: "20ml of tequila")
dose4.ingredient = tequila
dose4.cocktail = bloody_mary
dose4.save

dose5 = Dose.new(description: "50ml of vodka")
dose5.ingredient = vodka
dose5.cocktail = martini
dose5.save

dose6 = Dose.new(description: "10cl of rum")
dose6.ingredient = rum
dose6.cocktail = martini
dose6.save
