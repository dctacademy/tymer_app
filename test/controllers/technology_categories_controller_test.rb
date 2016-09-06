require 'test_helper'

class TechnologyCategoriesControllerTest < ActionController::TestCase
  setup do
    @technology_category = technology_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:technology_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create technology_category" do
    assert_difference('TechnologyCategory.count') do
      post :create, technology_category: { name: @technology_category.name }
    end

    assert_redirected_to technology_category_path(assigns(:technology_category))
  end

  test "should show technology_category" do
    get :show, id: @technology_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @technology_category
    assert_response :success
  end

  test "should update technology_category" do
    patch :update, id: @technology_category, technology_category: { name: @technology_category.name }
    assert_redirected_to technology_category_path(assigns(:technology_category))
  end

  test "should destroy technology_category" do
    assert_difference('TechnologyCategory.count', -1) do
      delete :destroy, id: @technology_category
    end

    assert_redirected_to technology_categories_path
  end
end
