class StudentAssignmentsController < ApplicationController
  before_action :set_student_assignment, only: [:show, :edit, :update, :destroy]

  # GET /student_assignments
  def index
    @student_assignments = StudentAssignment.all
  end

  # GET /student_assignments/1
  def show
  end

  # GET /student_assignments/new
  def new
    @student_assignment = StudentAssignment.new
  end

  # GET /student_assignments/1/edit
  def edit
  end

  # POST /student_assignments
  def create
    @student_assignment = StudentAssignment.new(student_assignment_params)

    if @student_assignment.save
      redirect_to @student_assignment, notice: 'Student assignment was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /student_assignments/1
  def update
    if @student_assignment.update(student_assignment_params)
      redirect_to @student_assignment, notice: 'Student assignment was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /student_assignments/1
  def destroy
    @student_assignment.destroy
    redirect_to student_assignments_url, notice: 'Student assignment was successfully destroyed.'
  end

  def checked
    @student_assignment = StudentAssignment.find(params[:ass_id])
    @student_assignment.update_attributes(checked: true)
    @student_assignment.update_attributes(submitted_on: @student_assignment.updated_at)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_assignment
      @student_assignment = StudentAssignment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def student_assignment_params
      params.require(:student_assignment).permit(:student_id, :batch_assignment_id, :submitted_on)
    end
end
