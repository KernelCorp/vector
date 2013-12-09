class PagesController < ApplicationController

  def show
    if @page.redirect.blank?
      render
    else
      if @page.redirect == '/floor_galleries'
        redirect_to floor_galleries_path(page_id: @page.id)
      end
      if @page.redirect == '/ceiling_galleries'
        redirect_to ceiling_galleries_path(page_id: @page.id)
      end
      if @page.redirect == '/floor_spectrums'
        redirect_to floor_spectrums_path(page_id: @page.id)
      end
      if @page.redirect == '/ceiling_spectrums'
        redirect_to ceiling_spectrums_path(page_id: @page.id)
      end
    end
  end

end