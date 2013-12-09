class LampsController < ApplicationController
  before_filter :get_page_id
  def index
    @lamps = Lamp.where(category_id: params[:category_id])
  end
  private
  def get_page_id
    @page = Page.find params[:page_id] if params[:page_id]
  end
end