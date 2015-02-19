class StudentSourcesController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_student_source, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @student_sources = current_user.student_sources
    respond_with(@student_sources)
  end

  def show
    respond_with(@student_source)
  end

  def new
    @student_source = StudentSource.new
    respond_with(@student_source)
  end

  def edit
  end

  def create
    @student_source = StudentSource.new(student_source_params)
    @student_source.user_id = current_user.id
    @student_source.save
    respond_with(@student_source)
  end

  def update
    @student_source.update(student_source_params)
    respond_with(@student_source)
  end

  def destroy
    @student_source.destroy
    respond_with(@student_source)
  end

  private
    def set_student_source
      @student_source = StudentSource.find(params[:id])
    end

    def student_source_params
      params.require(:student_source).permit(:name)
    end
end
