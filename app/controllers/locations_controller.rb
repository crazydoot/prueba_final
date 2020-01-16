class LocationsController < ApplicationController
  include SessionsHelper

  def new
    @location = Location.new
  end

  def create
    @location = get_curr_user.locations.build(get_params)

    if @location.save
      redirect_to get_curr_user
    else
      render 'new'
    end
  end

private

  def get_params
    params.require(:location).permit(:name, :street_name, :neighborhood, :ext_int,
                                  :int_num, :postal_code, :city,
                                  :country)
  end
end
