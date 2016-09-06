class TechnologyCategoriesController < ApplicationController
  before_action :set_technology_category, only: [:show, :edit, :update, :destroy]

  # GET /technology_categories
  def index
    @technology_categories = TechnologyCategory.all
  end

  # GET /technology_categories/1
  def show
  end

  # GET /technology_categories/new
  def new
    @technology_category = TechnologyCategory.new
  end

  # GET /technology_categories/1/edit
  def edit
  end

  # POST /technology_categories
  def create
    @technology_category = TechnologyCategory.new(technology_category_params)

    if @technology_category.save
      redirect_to @technology_category, notice: 'Technology category was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /technology_categories/1
  def update
    if @technology_category.update(technology_category_params)
      redirect_to @technology_category, notice: 'Technology category was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /technology_categories/1
  def destroy
    @technology_category.destroy
    redirect_to technology_categories_url, notice: 'Technology category was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_technology_category
      @technology_category = TechnologyCategory.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def technology_category_params
      params.require(:technology_category).permit(:name)
    end
end
