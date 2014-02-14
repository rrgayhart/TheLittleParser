class ParsesController < ApplicationController
  
  def new
    @parse = Parse.new
  end

  def create
    @parse = params[:parse]
    @raw_ingredient = @parse[:raw_ingredient]
    array = Parse.new
    @answer = array.display_answer(@raw_ingredient)
    render 'index'
  end

end
