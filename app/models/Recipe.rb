class Recipe

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_popular
    array = []
    RecipeCard.all.each do |r|
      array << r.recipe
    end
    counts = Hash.new 0
      array.each do |name|
        counts[name] += 1
      end
    # freq = array.inject(Hash.new(0)){|h,v| h[v] += 1; h}
    array.max_by {|v| counts[v]}
  end

  def users
    array = []
    RecipeCard.all.each do |rc|
      if rc.recipe == self
        array << rc.user
      end
    end
    array.uniq
  end

  def recipes_cards
    RecipeCard.select do |rc|
      rc.recipe == self
    end
  end

  def ingredients
    x = RecipeIngredients.all.select do |ri|
      ri.recipes == self
    end
    x.map do |ri|
      ri.ingredients
    end
  end

  def add_ingredients(array)
    array.each do |i|
      RecipeIngredients.new(self, i)
    end
  end

  def allergens
    allergen_list = Allergen.all.map do |al|
      al.ingredient
    end
    self.ingredients.select do |i|
      allergen_list.include?(i)
    end
  end

end
