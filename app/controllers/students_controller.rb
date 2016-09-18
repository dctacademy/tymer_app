class StudentsController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_student, only: [:show, :edit, :update, :destroy]
  before_filter :prepare_exception_notifier

  respond_to :html

  def index
    @students = current_user.students.where('student_type = ?', 'enrolled')
    @lead_students = current_user.students.where('student_type = ?', 'lead').order('created_at DESC')
    @prospective_students = current_user.students.where('student_type = ?', 'prospect').order('created_at DESC')
    @lost_students = current_user.students.where('student_type = ?', 'lost').order('created_at DESC')
    @workshop_colleges = current_user.students.where('learning_style = ?', 'workshop')
    respond_with(@students)
  end

  def show
    @student_note = StudentNote.new
    @activities = @student.activities
    respond_with(@student)
  end

  def new
    @student = Student.new
    @profile = @student.build_profile
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

  def update_status
    @student = Student.find(params[:student_id])
    @student.update_attributes(student_type: params[:status], temperature: params[:temperature])
  end

  private

  def prepare_exception_notifier
    request.env["exception_notifier.exception_data"] = {
      :current_user => current_user
    }
  end

    def set_student
      @student = Student.find(params[:id])
    end

    def student_params
      params.require(:student).permit(:name, :email, :mobile, :about, :learning_style, :student_source_id, :temperature, :student_type, :batch_type, :mac_address,:user_id, {:course_ids => []}, profile_attributes: [:dob, :blood_group, :permanent_address, :current_address, :emergency_contact, :from, :college, :stream])
    end
end
