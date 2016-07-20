class RidesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_providers, only: [:new, :create]
  expose :rides
  expose :ride, attributes: :ride_params
  def index
  end

  def new
  end

  def create
    if ride.save
      redirect_to root_path, notice: I18n.t('shared.created', resource: 'Ride')
    else
      render :new
    end
  end

  private
  def ride_params
    params.require(:ride).permit(:price,
        start_address_attributes: [:street, :city, :country],
        destination_address_attributes: [:street, :city, :country])
  end

  def set_providers
    @providers = Provider.all
  end
end
