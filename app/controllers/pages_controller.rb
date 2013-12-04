class PagesController < ApplicationController

  def show
    @page = Page.find_by_slug params[:id]
    @side_menu_pages = Page.without_parent.all
  end

end

#color = page.color.nil? ? page.color : page.parent.color
#@pages = Page.all
#@menu_pages = Array.new
#@pages.each do |page|
#  if (page.id == page.page.id) && (page.id != @page.id)
#    @menu_pages << page
#  end
#end
