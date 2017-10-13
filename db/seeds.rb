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

# here cocktails have to be deleted before ingredient
# because it will delete all associated doses
# which then will allow us to delete ingredient
# because in the model associations, ingredient is not allowed to be deleted
# if there are exisiting doses associated to it
puts "start deleting"
Cocktail.destroy_all
Ingredient.destroy_all
puts "finished deleting"

def echo(x)
  puts "creating: " + "#{x}"
  return x
end

def attached(variable)
  puts variable.photo
end

url = "http://www.seriouseats.com/recipes/assets_c/2015/04/20150329-sierramadresunrise-cocktail-elana-lepkowski-thumb-1500xauto-421577.jpg"
# product = Product.new(name: 'Playstation')
# product.save!
# product.photo_url = url # Upload happens here

# here you dont need to do echo(Ingredient.create(name: "lemon"))
# because paraenthesis are optional if it knows which is the argument

lemon = echo Ingredient.create(name: "lemon")
ice = echo Ingredient.create(name: "ice")
orange = echo Ingredient.create(name: "orange")
gin = echo Ingredient.create(name: "gin")
rum = echo Ingredient.create(name: "rum")
tonic = echo Ingredient.create(name: "tonic")
vodka = echo Ingredient.create(name: "vodka")
tequila = echo Ingredient.create(name: "tequila")
milk = echo Ingredient.create(name: "milk")
kahlua = echo Ingredient.create(name: "kahlua")

martini = Cocktail.create(name: "martini")
martini.photo_url = url
attached(martini)
bloody_mary = Cocktail.create(name: "bloody mary")
bloody_mary.photo_url = url
attached(bloody_mary)
sour = Cocktail.create(name: "sour")
sour.photo_url = url
attached(sour)
mojito = Cocktail.create(name: "mojito")
mojito.photo_url = url
attached(mojito)
daiquiri = Cocktail.create(name: "daiquiri")
daiquiri.photo_url = url
attached(daiquiri)

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

puts "seed completed"
