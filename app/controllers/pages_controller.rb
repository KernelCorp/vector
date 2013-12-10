class PagesController < ApplicationController

  def show
    if @page.redirect.blank?
      render
    else
      if @page.redirect == '/floor_galleries'
        redirect_to page_floor_galleries_path(@page)
      end
      if @page.redirect == '/ceiling_galleries'
        redirect_to page_ceiling_galleries_path(@page)
      end
      if @page.redirect == '/floor_spectrums'
        redirect_to page_floor_spectrums_path(@page)
      end
      if @page.redirect == '/ceiling_spectrums'
        redirect_to page_ceiling_spectrums_path(@page)
      end
      if @page.redirect == '/outdoor_lamps'
        redirect_to page_category_lamps_path(@page, category_id: 1)
      end
      if @page.redirect == '/indoor_lamps'
        redirect_to page_category_lamps_path(@page, category_id: 2)
      end
      if @page.redirect == '/light_panels'
        redirect_to page_category_lamps_path(@page, category_id: 3)
      end
      if @page.redirect == '/light_tapes'
        redirect_to page_category_lamps_path(@page, category_id: 4)
      end
    end
  end

end