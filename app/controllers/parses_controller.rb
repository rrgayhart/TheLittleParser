class ParsesController < ApplicationController
  respond_to :json, :html
  skip_before_filter  :verify_authenticity_token
  
  def new
    @parse = Parse.new('')
  end

  def create
    @parse = params[:parse]
    @raw_ingredient = @parse[:raw_ingredient]
    array = Parse.new(@raw_ingredient)
    @answer = array.display_answer
    respond_to do |format|
      format.html { render 'show' }
      format.json { render :json => @answer}
    end
  end

  #curl -i -H application/json" -X POST -d "parse[raw_ingredient]=corn" http://localhost:3000/parses


  def show

  end

end
