
class HomeController < ApplicationController
  layout 'application'
  before_filter :authenticate_user!
  def index
  end
end
