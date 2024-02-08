class GradesEvaluateBranchesController < ApplicationController
  before_action :set_grades_evaluate_branch, only: %i[ show edit update destroy ]

  # GET /grades_evaluate_branches or /grades_evaluate_branches.json
  def index
    @grades_evaluate_branches = GradesEvaluateBranch.all
  end

  # GET /grades_evaluate_branches/1 or /grades_evaluate_branches/1.json
  def show
  end

  # GET /grades_evaluate_branches/new
  def new
    @grades_evaluate_branch = GradesEvaluateBranch.new
  end

  # GET /grades_evaluate_branches/1/edit
  def edit
  end

  # POST /grades_evaluate_branches or /grades_evaluate_branches.json
  def create
    @grades_evaluate_branch = GradesEvaluateBranch.new(grades_evaluate_branch_params)

    respond_to do |format|
      if @grades_evaluate_branch.save
        format.html { redirect_to grades_evaluate_branch_url(@grades_evaluate_branch), notice: "Grades evaluate branch was successfully created." }
        format.json { render :show, status: :created, location: @grades_evaluate_branch }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @grades_evaluate_branch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grades_evaluate_branches/1 or /grades_evaluate_branches/1.json
  def update
    respond_to do |format|
      if @grades_evaluate_branch.update(grades_evaluate_branch_params)
        format.html { redirect_to grades_evaluate_branch_url(@grades_evaluate_branch), notice: "Grades evaluate branch was successfully updated." }
        format.json { render :show, status: :ok, location: @grades_evaluate_branch }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @grades_evaluate_branch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grades_evaluate_branches/1 or /grades_evaluate_branches/1.json
  def destroy
    @grades_evaluate_branch.destroy!

    respond_to do |format|
      format.html { redirect_to grades_evaluate_branches_url, notice: "Grades evaluate branch was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grades_evaluate_branch
      @grades_evaluate_branch = GradesEvaluateBranch.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def grades_evaluate_branch_params
      params.require(:grades_evaluate_branch).permit(:evaluation_date, :grade_id, :branch_id)
    end
end
