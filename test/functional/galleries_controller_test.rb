require 'test_helper'

class GalleriesControllerTest < ActionController::TestCase

  fixtures :galleries

  test 'get floor galleries' do
    get :index, class_name: 'FloorGallery'
    galleries_test = assigns(:galleries)
    floor_galleries = FloorGallery.all
    assert_equal galleries_test.count, floor_galleries.count
  end

  test 'get ceiling galleries' do
    get :index, class_name: 'CeilingGallery'
    galleries_test = assigns(:galleries)
    ceiling_galleries = CeilingGallery.all
    assert_equal galleries_test.count, ceiling_galleries.count
  end

end
