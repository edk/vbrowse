class HomeController < ApplicationController
  def index
    @categories = Category.order(:name).all
    @movies = Movie.all
    unorganised_dir = Setting.find_by_key('dirs') ? Setting.find_by_key('dirs').value : 'public/videos/more_vids/ripped/'
    @movies = Movie.unorganized(unorganised_dir)
  end

  def show
  end

end
