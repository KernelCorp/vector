class CategoriesController < ApplicationController

  def show
    @lamps = Category.find(params[:id]).lamps
  end

  protected
  def get_pages
    super
    @page = Page.find_by_redirect category_path(Category.find(params[:id]))
  end

end