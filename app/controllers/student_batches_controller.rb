class StudentBatchesController < ApplicationController
  before_action :set_student_batch, only: [:show, :edit, :update, :destroy]

  # GET /student_batches
  # GET /student_batches.json
  def index
    @student_batches = StudentBatch.all
  end

  # GET /student_batches/1
  # GET /student_batches/1.json
  def show
  end

  # GET /student_batches/new
  def new
    @student_batch = StudentBatch.new
  end

  # GET /student_batches/1/edit
  def edit
  end

  # POST /student_batches
  # POST /student_batches.json
  def create
    @student_batch = StudentBatch.new(student_batch_params)

    respond_to do |format|
      if @student_batch.save
        format.html { redirect_to @student_batch, notice: 'Student batch was successfully created.' }
        format.json { render :show, status: :created, location: @student_batch }
      else
        format.html { render :new }
        format.json { render json: @student_batch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_batches/1
  # PATCH/PUT /student_batches/1.json
  def update
    respond_to do |format|
      if @student_batch.update(student_batch_params)
        format.html { redirect_to batch_path(@student_batch.batch_id), notice: "Course fee added to #{@student_batch.student.name}" }
        format.json { render :show, status: :ok, location: @student_batch }
      else
        format.html { render :edit }
        format.json { render json: @student_batch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_batches/1
  # DELETE /student_batches/1.json
  def destroy
    @student_batch.destroy
    respond_to do |format|
      format.html { redirect_to student_batches_url, notice: 'Student batch was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_batch
      @student_batch = StudentBatch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_batch_params
      params.require(:student_batch).permit(:student_id, :batch_id, :course_fee)
    end
end
