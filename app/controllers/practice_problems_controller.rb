class PracticeProblemsController < ApplicationController
  before_action :set_practice_problem, only: [:show, :update, :destroy]

  # GET /practice_problems
  def index
    @practice_problems = PracticeProblem.all

    render json: @practice_problems
  end

  # GET /practice_problems/1
  def show
    render json: @practice_problem
  end

  # POST /practice_problems
  def create
    @practice_problem = PracticeProblem.new(practice_problem_params)

    if @practice_problem.save
      render json: @practice_problem, status: :created, location: @practice_problem
    else
      render json: @practice_problem.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /practice_problems/1
  def update
    if @practice_problem.update(practice_problem_params)
      render json: @practice_problem
    else
      render json: @practice_problem.errors, status: :unprocessable_entity
    end
  end

  # DELETE /practice_problems/1
  def destroy
    @practice_problem.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_practice_problem
      @practice_problem = PracticeProblem.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def practice_problem_params
      params.require(:practice_problem).permit(:name, :description, :solution, :difficulty, :url)
    end
end
