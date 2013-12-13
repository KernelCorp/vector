#encoding: utf-8
class LampsController < ApplicationController

  def index
    redirect_to category_path(Category.find_all_by_name 'Наружные')
  end
end