class RidesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_providers, only: [:new, :create]
  expose :rides, -> { current_user.rides.all }
  expose :ride, attributes: :ride_params
  def index
    @week_rides = rides.where("created_at > ?", Date.today.at_beginning_of_week)
                       .group_by{ |n| l(n.created_at, format: :default)}
    @month_rides = rides.where("created_at > ?", Date.today.at_beginning_of_month)
                        .group_by{ |n| l(n.created_at, format: :default)}
  end

  def new
    @start_address = ride.build_start_address
    @destination_address = ride.build_destination_address
  end

  def create
    ride.user = current_user
    ride.assign_attributes(ride_params)
    if ride.save
      redirect_to rides_path, notice: I18n.t('shared.created', resource: 'Ride')
    else
      render :new
    end
  end

  private
  def ride_params
    params.require(:ride).permit(:price, :provider_id,
        start_address_attributes: [:street, :city, :country],
        destination_address_attributes: [:street, :city, :country])
  end

  def set_providers
    @providers = Provider.all
  end
end
