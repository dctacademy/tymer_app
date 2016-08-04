class BatchAssignmentsController < ApplicationController
  before_action :set_batch_assignment, only: [:show, :edit, :update, :destroy]

  # GET /batch_assignments
  def index
    @batch_assignments = BatchAssignment.all
  end

  # GET /batch_assignments/1
  def show
  end

  # GET /batch_assignments/new
  def new
    @batch_assignment = BatchAssignment.new
  end

  # GET /batch_assignments/1/edit
  def edit
  end

  # POST /batch_assignments
  def create
    @batch_assignment = BatchAssignment.new(batch_assignment_params)
    @batch_assignment.save
    Notifications.send_assignment(@batch_assignment, @batch_assignment.batch, @batch_assignment.assignment).deliver!
  end

  # PATCH/PUT /batch_assignments/1
  def update
    if @batch_assignment.update(batch_assignment_params)
      redirect_to @batch_assignment, notice: 'Batch assignment was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /batch_assignments/1
  def destroy
    @batch_assignment.destroy
    redirect_to batch_assignments_url, notice: 'Batch assignment was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_batch_assignment
      @batch_assignment = BatchAssignment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def batch_assignment_params
      params.require(:batch_assignment).permit(:batch_id, :assignment_id, :due_date, student_ids:[])
    end
end
