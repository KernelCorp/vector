#encoding: utf-8
require 'test_helper'

class LampTest < ActiveSupport::TestCase
  test 'slug' do
    lamp = Lamp.create! name: 'Лампа'
    assert_equal lamp.slug, 'lampa'
  end
end
