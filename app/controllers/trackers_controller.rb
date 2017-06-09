class TrackersController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_tracker, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @trackers = Tracker.all
    respond_with(@trackers)
  end

  def show
    respond_with(@tracker)
  end

  def new
    @tracker = Tracker.new
    respond_with(@tracker)
  end

  def edit
  end

  def create
    @tracker = Tracker.new(tracker_params)
    @tracker.user_id = current_user.id
    if @tracker.save
      #Notifications.time_tracker(@tracker).deliver!
      redirect_to batch_path(@tracker.batch_id), notice: "Successfully added tracker"
    else
      render action: 'new'
    end
    
  end

  def update
    @tracker.update(tracker_params)
    respond_with(@tracker)
  end

  def destroy
    @tracker.destroy
    redirect_to batch_path(@tracker.batch_id), notice: "Successfully deleted the tracker"
  end

  private
    def set_tracker
      @tracker = Tracker.find(params[:id])
    end

    def tracker_params
      params.require(:tracker).permit(:batch_id, :start_datetime, :end_datetime, :description, :user_id)
    end
end
