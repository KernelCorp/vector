#encoding: utf-8
require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  test 'slug' do
    cat = Category.create! name: 'Лампа'
    assert_equal cat.slug, 'lampa'
  end
end
