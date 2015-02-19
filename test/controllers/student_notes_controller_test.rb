require 'test_helper'

class StudentNotesControllerTest < ActionController::TestCase
  setup do
    @student_note = student_notes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_notes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_note" do
    assert_difference('StudentNote.count') do
      post :create, student_note: { note: @student_note.note, student_id: @student_note.student_id, user_id: @student_note.user_id }
    end

    assert_redirected_to student_note_path(assigns(:student_note))
  end

  test "should show student_note" do
    get :show, id: @student_note
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student_note
    assert_response :success
  end

  test "should update student_note" do
    patch :update, id: @student_note, student_note: { note: @student_note.note, student_id: @student_note.student_id, user_id: @student_note.user_id }
    assert_redirected_to student_note_path(assigns(:student_note))
  end

  test "should destroy student_note" do
    assert_difference('StudentNote.count', -1) do
      delete :destroy, id: @student_note
    end

    assert_redirected_to student_notes_path
  end
end
