class HomeController < ApplicationController
  def index
    @categories = Category.order(:name).all
    @movies = Movie.all
    #@movies = Movie.unorganized(Setting.find_by_key('dirs').value)
  end

  def show
  end

end
