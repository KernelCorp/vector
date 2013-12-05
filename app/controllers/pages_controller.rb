class PagesController < ApplicationController

  def show
    if @page.redirect.blank?
      render @page.redirect
    else
      render
    end
  end

end