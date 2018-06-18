class Ingredient

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end


  def self.allergens
    array = []
    Allergen.all.each do |a|
      array << a.ingredient
    end
    array
  end

  def self.most_common_allergen
      counts = Hash.new 0
        Ingredient.allergens.each do |name|
          counts[name] += 1
        end
      #freq = array.inject(Hash.new(0)){|h,v| h[v] += 1; h}
      allergens.max_by {|v| counts[v]}
  end

  def recipez
    x = RecipeIngredients.all.select do |ri|
      ri.ingredients == self
    end
    x.map do |ri|
      ri.recipes
    end
  end

end
