require 'test_helper'

class BatchAssignmentsControllerTest < ActionController::TestCase
  setup do
    @batch_assignment = batch_assignments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:batch_assignments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create batch_assignment" do
    assert_difference('BatchAssignment.count') do
      post :create, batch_assignment: { assignment_id: @batch_assignment.assignment_id, batch_id: @batch_assignment.batch_id, due_date: @batch_assignment.due_date }
    end

    assert_redirected_to batch_assignment_path(assigns(:batch_assignment))
  end

  test "should show batch_assignment" do
    get :show, id: @batch_assignment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @batch_assignment
    assert_response :success
  end

  test "should update batch_assignment" do
    patch :update, id: @batch_assignment, batch_assignment: { assignment_id: @batch_assignment.assignment_id, batch_id: @batch_assignment.batch_id, due_date: @batch_assignment.due_date }
    assert_redirected_to batch_assignment_path(assigns(:batch_assignment))
  end

  test "should destroy batch_assignment" do
    assert_difference('BatchAssignment.count', -1) do
      delete :destroy, id: @batch_assignment
    end

    assert_redirected_to batch_assignments_path
  end
end
