class WorkersController < ApplicationController
  def new
    if session[:user_id]
      @worker = Worker.new
    else
      redirect_to home_path
    end
  end

  def create
    @curr_loc = get_curr_user.locations.find(params[:worker][:location_id])
    @worker = @curr_loc.workers.build(get_params)
    if @worker.save
      redirect_to get_curr_user
    else
      render 'new'
    end
  end

private
  def get_params
    params.require(:worker).permit(:name, :rfc, :position,
                                  :location_id, :user_id)
  end
end
