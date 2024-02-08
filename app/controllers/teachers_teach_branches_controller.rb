class TeachersTeachBranchesController < ApplicationController
  before_action :set_teachers_teach_branch, only: %i[ show edit update destroy ]

  # GET /teachers_teach_branches or /teachers_teach_branches.json
  def index
    @teachers_teach_branches = TeachersTeachBranch.all
  end

  # GET /teachers_teach_branches/1 or /teachers_teach_branches/1.json
  def show
  end

  # GET /teachers_teach_branches/new
  def new
    @teachers_teach_branch = TeachersTeachBranch.new
  end

  # GET /teachers_teach_branches/1/edit
  def edit
  end

  # POST /teachers_teach_branches or /teachers_teach_branches.json
  def create
    @teachers_teach_branch = TeachersTeachBranch.new(teachers_teach_branch_params)

    respond_to do |format|
      if @teachers_teach_branch.save
        format.html { redirect_to teachers_teach_branch_url(@teachers_teach_branch), notice: "Teachers teach branch was successfully created." }
        format.json { render :show, status: :created, location: @teachers_teach_branch }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @teachers_teach_branch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teachers_teach_branches/1 or /teachers_teach_branches/1.json
  def update
    respond_to do |format|
      if @teachers_teach_branch.update(teachers_teach_branch_params)
        format.html { redirect_to teachers_teach_branch_url(@teachers_teach_branch), notice: "Teachers teach branch was successfully updated." }
        format.json { render :show, status: :ok, location: @teachers_teach_branch }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @teachers_teach_branch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teachers_teach_branches/1 or /teachers_teach_branches/1.json
  def destroy
    @teachers_teach_branch.destroy!

    respond_to do |format|
      format.html { redirect_to teachers_teach_branches_url, notice: "Teachers teach branch was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teachers_teach_branch
      @teachers_teach_branch = TeachersTeachBranch.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def teachers_teach_branch_params
      params.require(:teachers_teach_branch).permit(:teacher_id, :branch_id)
    end
end
