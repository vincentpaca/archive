class DashboardController < ApplicationController
  before_filter :authenticate_user!

  def show
    @document = Document.new
  end
end
