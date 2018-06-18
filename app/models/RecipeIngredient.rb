class RecipeIngredients

  attr_accessor :recipes, :ingredients

  @@all = []

  def initialize(recipes, ingredients)
    @recipes = recipes
    @ingredients = ingredients
    @@all << self
  end

  def self.all
    @@all
  end

  def ingredient
    self.ingredient
  end

  def recipe
    self.recipe
  end

end
