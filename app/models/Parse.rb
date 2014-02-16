class Parse
  extend ActiveModel::Naming
  include ActiveModel::Conversion

  attr_accessor :raw_ingredient, :measurement, :quantity, :tag

  def initialize(string)
    @raw_ingredient = string
    @tag = get_tag
    @measurement = get_measurement
    @quantity = get_quantity
  end

  def persisted?
    false
  end

  def result
    LittleRecipeParser::Parse.new(raw_ingredient)
  end

  def get_tag
    result.tag
  end

  def get_quantity
    result.quantity
  end

  def get_measurement
    result.measurement
  end
end
