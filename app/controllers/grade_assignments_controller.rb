class GradeAssignmentsController < ApplicationController
  before_action :set_grade_assignment, only: %i[ show edit update destroy ]

  # GET /grade_assignments or /grade_assignments.json
  def index
    @grade_assignments = GradeAssignment.all
  end

  # GET /grade_assignments/1 or /grade_assignments/1.json
  def show
  end

  # GET /grade_assignments/new
  def new
    @grade_assignment = GradeAssignment.new
  end

  # GET /grade_assignments/1/edit
  def edit
  end

  # POST /grade_assignments or /grade_assignments.json
  def create
    @grade_assignment = GradeAssignment.new(grade_assignment_params)

    respond_to do |format|
      if @grade_assignment.save
        format.html { redirect_to grade_assignment_url(@grade_assignment), notice: "Grade assignment was successfully created." }
        format.json { render :show, status: :created, location: @grade_assignment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @grade_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grade_assignments/1 or /grade_assignments/1.json
  def update
    respond_to do |format|
      if @grade_assignment.update(grade_assignment_params)
        format.html { redirect_to grade_assignment_url(@grade_assignment), notice: "Grade assignment was successfully updated." }
        format.json { render :show, status: :ok, location: @grade_assignment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @grade_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grade_assignments/1 or /grade_assignments/1.json
  def destroy
    @grade_assignment.destroy!

    respond_to do |format|
      format.html { redirect_to grade_assignments_url, notice: "Grade assignment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grade_assignment
      @grade_assignment = GradeAssignment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def grade_assignment_params
      params.require(:grade_assignment).permit(:student_id, :grade_id)
    end
end
