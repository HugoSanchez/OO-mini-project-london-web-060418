class RecipeCard

  attr_accessor :recipe, :user, :rating, :date

  @@all = []

  def initialize(recipe, user, rating=0, date=DateTime.now)
    @recipe = recipe
    @user = user
    @rating = rating
    @date = date
    @@all << self
  end

  def self.all
    @@all
  end

  def date
    self.date
  end

  def rating
    self.rating
  end

  def user
    self.user
  end

  def recipe
    self.recipe
  end
  
end
