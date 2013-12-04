class MainPageController < ApplicationController

  def index
    @pages = Page.without_parent.all
    render layout: 'main_page'
  end

end
