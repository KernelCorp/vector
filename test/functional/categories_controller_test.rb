require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase

  fixtures :categories, :lamps

  test 'show' do
    get :show, id: categories(:one).slug
    excepted_lamps = categories(:one).lamps
    excepted_page  = Page.find_by_redirect category_path(categories :one)
    assert_equal excepted_lamps, assigns(:lamps)
    assert_equal excepted_page,  assigns(:page)
  end

end
