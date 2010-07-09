class PagesController < ApplicationController
  before_filter :authenticate_user!, :except => [:index]
  
  def index
  end
  
  def members_index
    render 'members/index'
  end
end
