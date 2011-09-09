class CategoriesController < InheritedResources::Base
  respond_to :html
  actions :all

  def create
    super do |format|
      format.html { redirect_to categories_url }
    end
  end
  protected
  def collection
    @categories ||= end_of_association_chain.order(:name)
  end

end
