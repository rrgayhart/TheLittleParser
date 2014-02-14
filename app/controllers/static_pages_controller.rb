class StaticPagesController < ApplicationController

  def index
    @parse = Parse.new
  end
end
