class Recipe
  include Mongoid::Document
  field :name , type: String
  field :ingredient, type: String
  field :cooktime, type: Integer
  field :difficulty, type: Integer

#  has_many :recipe_ingredients

  #bring back an array of recipes
  def recipes
    Recipe.find self.ingredients.map(&:recipe_id)
  end

  # bring back and array of all recipe IDs
  def recipe_ids
    self.recipes.map(&:recipe_id)
  end

end
