class AdminsController < ApplicationController
  def index
    @settings = Setting.all
  end
  def show
    @settings = Setting.all
    render :index
  end
  def create
    @setting = Setting.find_by_key params[:setting][:key]
    if !@setting
      @setting = Setting.create params[:setting]
    else
      @setting.update_attributes params[:setting]
    end
    redirect_to admin_url
  end
  def update
    @setting = Setting.find_by_key params[:setting][:key]
    if @setting
      @setting.update_attributes params[:setting]
    end
    redirect_to admin_url
  end
  def remove
  end
end
