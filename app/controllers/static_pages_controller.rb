class StaticPagesController < ApplicationController

  def index
    @parse = Parse.new('string')
  end
end
