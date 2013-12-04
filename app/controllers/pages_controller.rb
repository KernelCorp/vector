class PagesController < ApplicationController

  def show
    @page = Page.find_by_slug params[:id]
    @side_menu_pages = Page.without_parent.all
  end

end