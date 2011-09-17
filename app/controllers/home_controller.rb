class HomeController < ApplicationController
  def index
    @categories = Category.order(:name).all
    #@movies = Movie.all
    @movies = []
  end

end
