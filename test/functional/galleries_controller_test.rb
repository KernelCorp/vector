require 'test_helper'

class GalleriesControllerTest < ActionController::TestCase

  fixtures :galleries

  test 'show page with template name' do
    @gallery = galleries(:with_template)
    get(:show, {'id' => @gallery.id})
    assert_template 'show_'.concat(@gallery.template_name)
  end

  test 'show page without template name' do
    @gallery = galleries(:without_template)
    get(:show, {'id' => @gallery.id})
    assert_template 'show'
  end

end
