class IngredientsController < ApplicationController
  def index
    @cocktails = Cocktail.all.order(:name)
  end
end
