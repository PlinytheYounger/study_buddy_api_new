class ComprehensionsController < ApplicationController
  before_action :set_comprehension, only: [:show, :update, :destroy]

  # GET /comprehensions
  def index
    @comprehensions = Comprehension.all

    render json: @comprehensions
  end

  # GET /comprehensions/1
  def show
    render json: @comprehension
  end

  # POST /comprehensions
  def create
    @comprehension = Comprehension.new(comprehension_params)

    if @comprehension.save
      render json: @comprehension, status: :created, location: @comprehension
    else
      render json: @comprehension.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /comprehensions/1
  def update
    if @comprehension.update(comprehension_params)
      render json: @comprehension
    else
      render json: @comprehension.errors, status: :unprocessable_entity
    end
  end

  # DELETE /comprehensions/1
  def destroy
    @comprehension.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comprehension
      @comprehension = Comprehension.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def comprehension_params
      params.require(:comprehension).permit(:user_id, :concept_id, :comprehension)
    end
end
