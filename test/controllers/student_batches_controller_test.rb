require 'test_helper'

class StudentBatchesControllerTest < ActionController::TestCase
  setup do
    @student_batch = student_batches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_batches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_batch" do
    assert_difference('StudentBatch.count') do
      post :create, student_batch: {  }
    end

    assert_redirected_to student_batch_path(assigns(:student_batch))
  end

  test "should show student_batch" do
    get :show, id: @student_batch
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student_batch
    assert_response :success
  end

  test "should update student_batch" do
    patch :update, id: @student_batch, student_batch: {  }
    assert_redirected_to student_batch_path(assigns(:student_batch))
  end

  test "should destroy student_batch" do
    assert_difference('StudentBatch.count', -1) do
      delete :destroy, id: @student_batch
    end

    assert_redirected_to student_batches_path
  end
end
