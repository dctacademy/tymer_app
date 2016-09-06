class JobSourcesController < ApplicationController
  before_action :set_job_source, only: [:show, :edit, :update, :destroy]

  # GET /job_sources
  def index
    @job_sources = JobSource.all
  end

  # GET /job_sources/1
  def show
  end

  # GET /job_sources/new
  def new
    @job_source = JobSource.new
  end

  # GET /job_sources/1/edit
  def edit
  end

  # POST /job_sources
  def create
    @job_source = JobSource.new(job_source_params)

    if @job_source.save
      redirect_to @job_source, notice: 'Job source was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /job_sources/1
  def update
    if @job_source.update(job_source_params)
      redirect_to @job_source, notice: 'Job source was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /job_sources/1
  def destroy
    @job_source.destroy
    redirect_to job_sources_url, notice: 'Job source was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_source
      @job_source = JobSource.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def job_source_params
      params.require(:job_source).permit(:name)
    end
end
