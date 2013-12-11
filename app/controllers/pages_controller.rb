class PagesController < ApplicationController

  def show
    if @page.redirect.blank?
      render
    else
      redirect_to  @page.redirect
     end
  end

end