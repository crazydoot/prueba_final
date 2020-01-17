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

  def edit
    @location = get_curr_user.locations.find(params[:id])
  end

  def update
    @location = get_curr_user.locations.find(params[:id])

    if @location.update_attributes(get_params)
      redirect_to get_curr_user
    else
      render 'edit'
    end
  end

private

  def get_params
    params.require(:location).permit(:name, :street_name, :neighborhood, :ext_int,
                                  :int_num, :postal_code, :city,
                                  :country)
  end
end
