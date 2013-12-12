require 'test_helper'

class FloorGalleriesControllerTest < ActionController::TestCase

  fixtures :galleries

  test 'index' do
    get :index
    excepted_galleries = FloorGallery.all
    excepted_page      = Page.find_by_redirect floor_galleries_path
    assert_equal excepted_galleries, assigns(:galleries)
    assert_equal excepted_page,      assigns(:page)
  end

end
