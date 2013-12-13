class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :get_pages

  protected
  def get_pages
    @page = Page.find_by_slug params[:id]
    @primary_pages = Page.without_parent.all
  end

end
