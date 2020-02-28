require 'open-uri'
require 'json'

puts 'Cleaning DB...'
Cocktail.destroy_all
Ingredient.destroy_all
puts 'ok'

puts 'seeding...'
url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients = JSON.parse(open(url).read)
ingredients['drinks'].each do |ingredient|
  a_ingredient = Ingredient.create(name: ingredient['strIngredient1'])
end

3.times do
  cocktail = Cocktail.create!(name: Faker::TvShows::Simpsons.character)
  Dose.create!(description: '10 cl', cocktail: cocktail, ingredient: Ingredient.order('RANDOM()').first)
end

puts 'ok'
