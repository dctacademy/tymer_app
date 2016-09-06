class CompanyContactsController < ApplicationController
  before_action :set_company_contact, only: [:show, :edit, :update, :destroy]

  # GET /company_contacts
  def index
    @company_contacts = CompanyContact.all
  end

  # GET /company_contacts/1
  def show
  end

  # GET /company_contacts/new
  def new
    @company_contact = CompanyContact.new
  end

  # GET /company_contacts/1/edit
  def edit
  end

  # POST /company_contacts
  def create
    @company_contact = CompanyContact.new(company_contact_params)

    if @company_contact.save
      redirect_to @company_contact, notice: 'Company contact was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /company_contacts/1
  def update
    if @company_contact.update(company_contact_params)
      redirect_to @company_contact, notice: 'Company contact was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /company_contacts/1
  def destroy
    @company_contact.destroy
    redirect_to company_contacts_url, notice: 'Company contact was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company_contact
      @company_contact = CompanyContact.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def company_contact_params
      params.require(:company_contact).permit(:company_id, :name, :email, :mobile)
    end
end
