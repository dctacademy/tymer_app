class CoursesController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_course, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @courses = Course.all
    respond_with(@courses)
  end

  def show
    respond_with(@course)
  end

  def new
    @course = Course.new
    respond_with(@course)
  end

  def edit
  end

  def create
    @course = Course.new(course_params)
    @course.user_id = current_user.id
    @course.save
    respond_with(@course)
  end

  def update
    @course.update(course_params)
    respond_with(@course)
  end

  def destroy
    @course.destroy
    respond_with(@course)
  end

  private
    def set_course
      @course = Course.find(params[:id])
    end

    def course_params
      params.require(:course).permit(:name, :user_id)
    end
end
