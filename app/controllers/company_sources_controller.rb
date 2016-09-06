class CompanySourcesController < ApplicationController
  before_action :set_company_source, only: [:show, :edit, :update, :destroy]

  # GET /company_sources
  def index
    @company_sources = CompanySource.all
  end

  # GET /company_sources/1
  def show
  end

  # GET /company_sources/new
  def new
    @company_source = CompanySource.new
  end

  # GET /company_sources/1/edit
  def edit
  end

  # POST /company_sources
  def create
    @company_source = CompanySource.new(company_source_params)

    if @company_source.save
      redirect_to @company_source, notice: 'Company source was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /company_sources/1
  def update
    if @company_source.update(company_source_params)
      redirect_to @company_source, notice: 'Company source was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /company_sources/1
  def destroy
    @company_source.destroy
    redirect_to company_sources_url, notice: 'Company source was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company_source
      @company_source = CompanySource.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def company_source_params
      params.require(:company_source).permit(:name)
    end
end
