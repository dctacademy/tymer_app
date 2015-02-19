class StudentsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @students = current_user.students.where('student_type = ?', 'enrolled')
    @lead_students = current_user.students.where('student_type = ?', 'lead')
    @prospective_students = current_user.students.where('student_type = ?', 'prospect')
    @lost_students = current_user.students.where('student_type = ?', 'lost')
    
    respond_with(@students)
  end

  def show
    @student_note = StudentNote.new
    respond_with(@student)
  end

  def new
    @student = Student.new
    respond_with(@student)
  end

  def edit
  end

  def create
    @student = Student.new(student_params)
    @student.user_id = current_user.id
    @student.save
    respond_with(@student)
  end

  def update
    @student.update(student_params)
    respond_with(@student)
  end

  def destroy
    @student.destroy
    respond_with(@student)
  end

  private
    def set_student
      @student = Student.find(params[:id])
    end

    def student_params
      params.require(:student).permit(:name, :email, :mobile, :about, :learning_style, :student_source_id, :student_type, :user_id, {:course_ids => []})
    end
end
