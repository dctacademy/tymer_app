class BatchesController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_batch, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @batches = current_user.batches
    respond_with(@batches)
  end

  def show
    @tracker = Tracker.new
    @message = Message.new
    @payment = Payment.new
    respond_with(@batch)
  end

  def new
    @batch = Batch.new
    respond_with(@batch)
  end

  def edit
  end

  def create
    @batch = Batch.new(batch_params)
    @batch.user_id = current_user.id
    @batch.save
    respond_with(@batch)
  end

  def update
    @batch.update(batch_params)
    respond_with(@batch)
  end

  def destroy
    @batch.destroy
    respond_with(@batch)
  end

  private
    def set_batch
      @batch = Batch.find(params[:id])
    end

    def batch_params
      params.require(:batch).permit(:title, :start_date, :end_date, :user_id, :status, :description, :instruction_type, :student_ids => [])
    end
end
