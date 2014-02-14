class ParsesController < ApplicationController
  
  def new
    @parse = Parse.new('')
  end

  def create
    @parse = params[:parse]
    @raw_ingredient = @parse[:raw_ingredient]
    array = Parse.new(@raw_ingredient)
    @answer = array.display_answer
    render 'index'
  end

end
