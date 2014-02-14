require 'GroceryListFormatter'

class Parse
  extend ActiveModel::Naming
  include ActiveModel::Conversion

  attr_accessor :raw_ingredient, :measurement, :quantity, :tag

  def initialize(string)
    @raw_ingredient = string
    @tag = ""
    @measurement = ""
    @quantity = ""
  end

  def persisted?
    false
  end

  def display_answer
    @tag = GroceryListFormatter.check_name(raw_ingredient)
    @measurement = get_measurement
    @quantity = get_quantity
    return self
  end

  def get_quantity
    qtys = raw_ingredient[0..8].split.select do |char|
      char =~ /[[:digit:]]/
    end
    joined_qty = qtys.join(' ')
    if joined_qty.include?('(')
      joined_qty = joined_qty.concat(')')
    end
    if joined_qty == ""
      return nil
    else
      joined_qty
    end
  end

  def get_measurement
    raw_ingredient.downcase.split.select do |word|
      acceptable_measurements.include?(word)
    end.first
  end

  def acceptable_measurements
    ['teaspoon', 'teaspoons', 't', 'tsp', 'cup', 'cups', 'pound', 'pounds', 'tablespoon', 
      'tablespoons', 'tbl', 'tbs', 'tbsp', 'ounce', 'ounces', 'oz', 'fl oz', 'pint', 'pints', 'quart', 'quarts',
      'gallon', 'gallons', 'ml', 'liter', 'litre', 'l', 'dash']
  end

end
