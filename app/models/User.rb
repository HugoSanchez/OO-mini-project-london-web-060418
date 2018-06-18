class User

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def recipes
    # array = []
    # RecipeCard.all.each do |rc|
    #   if rc.user == self
    #     array << rc.recipe
    #   end
    # end
    # array.uniq
    self.recipes_cards.map{|rc| rc.recipe}
  end

  def recipes_cards
    RecipeCard.all.select do |rc|
      rc.user == self
    end
  end

  def add_recipe_card(recipe, rating)
    new_rc = RecipeCard.new(recipe, self, rating)
    new_rc
  end

  def top_three_recipes
    self.recipes_cards.sort_by{|rc| rc.rating}.reverse[0..2]
  end

  def most_recent_recipe
    self.recipes_cards.sort_by{|rc| rc.date}[0]
  end

  def declare_allergen(i)
    Allergen.new(self, i)
  end

  def allergens
    Allergens.all.select do |al|
      al.user == self
  end 


end
