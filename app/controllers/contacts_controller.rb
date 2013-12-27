class ContactsController < ApplicationController

  before_filter :get_page
  def index
    @contacts = Contacts.all
  end

  private
  def get_page
    @page = Page.all.first
  end
end