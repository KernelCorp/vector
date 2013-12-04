require 'test_helper'

class PageTest < ActiveSupport::TestCase

  test 'get pages without parent' do
    pages = Page.without_parent.all
    excepted = Page.where parent_id: nil
    assert_equal pages, excepted
  end

  test 'get color' do
    page = pages(:with_parent_but_without_color)
    assert_equal page.color, page.parent.color

    page = pages(:with_parent_and_with_color)
    assert !(page.color == page.parent.color)
  end

end
