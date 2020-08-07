class ConceptsController < ApplicationController
  before_action :set_concept, only: [:show, :update, :destroy]

  # GET /concepts
  def index
    @concepts = Concept.all

    render json: @concepts.to_json(include: [:comprehensions, practice_problems])
  end

  # PATCH/PUT /concepts/1
  def update
    if @concept.update(concept_params)
      render json: @concept
    else
      render json: @concept.errors, status: :unprocessable_entity
    end
  end

  # DELETE /concepts/1
  def destroy
    @concept.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_concept
      @concept = Concept.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def concept_params
      params.require(:concept).permit(:name, :category)
    end
end
