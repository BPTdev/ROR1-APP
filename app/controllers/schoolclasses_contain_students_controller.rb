class SchoolclassesContainStudentsController < ApplicationController
  before_action :set_schoolclasses_contain_student, only: %i[ show edit update destroy ]

  # GET /schoolclasses_contain_students or /schoolclasses_contain_students.json
  def index
    @schoolclasses_contain_students = SchoolclassesContainStudent.all
  end

  # GET /schoolclasses_contain_students/1 or /schoolclasses_contain_students/1.json
  def show
  end

  # GET /schoolclasses_contain_students/new
  def new
    @schoolclasses_contain_student = SchoolclassesContainStudent.new
  end

  # GET /schoolclasses_contain_students/1/edit
  def edit
  end

  # POST /schoolclasses_contain_students or /schoolclasses_contain_students.json
  def create
    @schoolclasses_contain_student = SchoolclassesContainStudent.new(schoolclasses_contain_student_params)

    respond_to do |format|
      if @schoolclasses_contain_student.save
        format.html { redirect_to schoolclasses_contain_student_url(@schoolclasses_contain_student), notice: "Schoolclasses contain student was successfully created." }
        format.json { render :show, status: :created, location: @schoolclasses_contain_student }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @schoolclasses_contain_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /schoolclasses_contain_students/1 or /schoolclasses_contain_students/1.json
  def update
    respond_to do |format|
      if @schoolclasses_contain_student.update(schoolclasses_contain_student_params)
        format.html { redirect_to schoolclasses_contain_student_url(@schoolclasses_contain_student), notice: "Schoolclasses contain student was successfully updated." }
        format.json { render :show, status: :ok, location: @schoolclasses_contain_student }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @schoolclasses_contain_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schoolclasses_contain_students/1 or /schoolclasses_contain_students/1.json
  def destroy
    @schoolclasses_contain_student.destroy!

    respond_to do |format|
      format.html { redirect_to schoolclasses_contain_students_url, notice: "Schoolclasses contain student was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schoolclasses_contain_student
      @schoolclasses_contain_student = SchoolclassesContainStudent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def schoolclasses_contain_student_params
      params.require(:schoolclasses_contain_student).permit(:school_class_id, :student_id)
    end
end
