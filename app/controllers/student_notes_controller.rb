class StudentNotesController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_student_note, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @student_notes = StudentNote.all
    respond_with(@student_notes)
  end

  def show
    respond_with(@student_note)
  end

  def new
    @student_note = StudentNote.new
    respond_with(@student_note)
  end

  def edit
  end

  def create
    @student_note = StudentNote.new(student_note_params)
    @student_note.user_id = current_user.id
    if @student_note.save
      redirect_to student_path(@student_note.student_id), notice: "Successfully created a note about the student"
    else
      render action: "new"
    end
  end

  def update
    @student_note.update(student_note_params)
    respond_with(@student_note)
  end

  def destroy
    @student_note.destroy
    respond_with(@student_note)
  end

  private
    def set_student_note
      @student_note = StudentNote.find(params[:id])
    end

    def student_note_params
      params.require(:student_note).permit(:note, :user_id, :student_id)
    end
end
