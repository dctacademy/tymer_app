require 'test_helper'

class CompanySourcesControllerTest < ActionController::TestCase
  setup do
    @company_source = company_sources(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:company_sources)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create company_source" do
    assert_difference('CompanySource.count') do
      post :create, company_source: { name: @company_source.name }
    end

    assert_redirected_to company_source_path(assigns(:company_source))
  end

  test "should show company_source" do
    get :show, id: @company_source
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @company_source
    assert_response :success
  end

  test "should update company_source" do
    patch :update, id: @company_source, company_source: { name: @company_source.name }
    assert_redirected_to company_source_path(assigns(:company_source))
  end

  test "should destroy company_source" do
    assert_difference('CompanySource.count', -1) do
      delete :destroy, id: @company_source
    end

    assert_redirected_to company_sources_path
  end
end
