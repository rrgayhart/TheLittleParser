require 'GroceryListFormatter'

class Parse
  extend ActiveModel::Naming
  include ActiveModel::Conversion

  attr_accessor :raw_ingredient

  def persisted?
    false
  end

  def initialize
    @raw_ingredient = ""
  end

  def display_answer(raw_ingredient)
    ingredient = raw_ingredient
    @answer = GroceryListFormatter.check_name(ingredient)
    return @answer
  end

end
