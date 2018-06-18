require_relative 'User'
require_relative 'Recipe'
require_relative 'RecipeCard'
require_relative 'Ingredient'
require_relative 'Allergen'
require_relative 'RecipeIngredient'
require 'pry'

user_1 = User.new("Someone")
user_2 = User.new("Noone")
user_3 = User.new("Somet")
user_4 = User.new("Simeone")
user_5 = User.new("Ramone")

i1 = Ingredient.new("i1")
i2 = Ingredient.new("i2")
i3 = Ingredient.new("i3")
i4 = Ingredient.new("i4")
i5 = Ingredient.new("i5")
i6 = Ingredient.new("i6")

a1 = Allergen.new(user_4, i1)
a2 = Allergen.new(user_3, i1)
a3 = Allergen.new(user_2, i1)
a4 = Allergen.new(user_3, i2)
a4 = Allergen.new(user_5, i1)
a5 = Allergen.new(user_1, i1)
a6 = Allergen.new(user_2, i2)
a7 = Allergen.new(user_3, i3)
a8 = Allergen.new(user_4, i2)
a9 = Allergen.new(user_4, i3)
a10 = Allergen.new(user_4, i4)

recipe_1 = Recipe.new("Recipe1")
recipe_2 = Recipe.new("Recipe2")
recipe_3 = Recipe.new("Recipe3")
recipe_4 = Recipe.new("Recipe4")
recipe_5 = Recipe.new("Recipe5")

ri1 = RecipeIngredients.new(recipe_5, i1)
ri2 = RecipeIngredients.new(recipe_4, i2)
ri3 = RecipeIngredients.new(recipe_4, i1)
ri4 = RecipeIngredients.new(recipe_4, i3)
ri5 = RecipeIngredients.new(recipe_3, i1)
ri6 = RecipeIngredients.new(recipe_3, i5)
ri7 = RecipeIngredients.new(recipe_3, i4)
ri8 = RecipeIngredients.new(recipe_1, i1)
ri9 = RecipeIngredients.new(recipe_1, i5)
ri10 = RecipeIngredients.new(recipe_2, i3)
ri11 = RecipeIngredients.new(recipe_2, i1)

rc_1 = RecipeCard.new(recipe_5, user_4, 5)
rc_2 = RecipeCard.new(recipe_5, user_3, 6)
rc_3 = RecipeCard.new(recipe_5, user_4, 7)
rc_4 = RecipeCard.new(recipe_1, user_2, 7)
rc_5 = RecipeCard.new(recipe_2, user_1, 8)
rc_6 = RecipeCard.new(recipe_2, user_5, 5)
rc_7 = RecipeCard.new(recipe_5, user_4, 8)
rc_8 = RecipeCard.new(recipe_5, user_4, 3)


binding.pry
true
