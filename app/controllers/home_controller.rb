class HomeController < ApplicationController
  def index
    @ride = current_user.rides.build
    @providers = Provider.all
    render :index
  end
end
