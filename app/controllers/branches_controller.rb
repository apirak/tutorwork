class BranchesController < ApplicationController
  before_action :set_school
  before_action :set_branch, only: %i[show edit update destroy]

  # GET /branches or /branches.json
  def index
    @branches = @school.branches.all
  end

  # GET /branches/1 or /branches/1.json
  def show
  end

  # GET /branches/new
  def new
    @branch = @school.branches.new
  end

  # GET /branches/1/edit
  def edit
  end

  # POST /branches or /branches.json
  def create
    @branch = @school.branches.new(branch_params)

    respond_to do |format|
      if @branch.save
        format.html do
          redirect_to branch_url(@branch),
                      notice: "Branch was successfully created."
        end
        format.json { render :show, status: :created, location: @branch }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json do
          render json: @branch.errors, status: :unprocessable_entity
        end
      end
    end
  end

  # PATCH/PUT /branches/1 or /branches/1.json
  def update
    respond_to do |format|
      if @branch.update(branch_params)
        format.html do
          redirect_to branch_url(@branch),
                      notice: "Branch was successfully updated."
        end
        format.json { render :show, status: :ok, location: @branch }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json do
          render json: @branch.errors, status: :unprocessable_entity
        end
      end
    end
  end

  # DELETE /branches/1 or /branches/1.json
  def destroy
    @branch.destroy!

    respond_to do |format|
      format.html do
        redirect_to branches_url, notice: "Branch was successfully destroyed."
      end
      format.json { head :no_content }
    end
  end

  private

  def set_school
    @school = School.find(params[:school_id])
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_branch
    @branch = @school.branches.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def branch_params
    params.require(:branch).permit(:name, :school_id)
  end
end
