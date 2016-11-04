class SpecialRecipesController < ApplicationController
  before_action :set_special_recipe, only: [:show, :edit, :update, :destroy]

  # GET /special_recipes
  # GET /special_recipes.json
  def index
    @special_recipes = SpecialRecipe.all
  end

  # GET /special_recipes/1
  # GET /special_recipes/1.json
  def show
  end

  # GET /special_recipes/new
  def new
    @special_recipe = SpecialRecipe.new
  end

  # GET /special_recipes/1/edit
  def edit
  end

  # POST /special_recipes
  # POST /special_recipes.json
  def create
    @special_recipe = SpecialRecipe.new(special_recipe_params)

    respond_to do |format|
      if @special_recipe.save
        format.html { redirect_to @special_recipe, notice: 'Special recipe was successfully created.' }
        format.json { render :show, status: :created, location: @special_recipe }
      else
        format.html { render :new }
        format.json { render json: @special_recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /special_recipes/1
  # PATCH/PUT /special_recipes/1.json
  def update
    respond_to do |format|
      if @special_recipe.update(special_recipe_params)
        format.html { redirect_to @special_recipe, notice: 'Special recipe was successfully updated.' }
        format.json { render :show, status: :ok, location: @special_recipe }
      else
        format.html { render :edit }
        format.json { render json: @special_recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /special_recipes/1
  # DELETE /special_recipes/1.json
  def destroy
    @special_recipe.destroy
    respond_to do |format|
      format.html { redirect_to special_recipes_url, notice: 'Special recipe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_special_recipe
      @special_recipe = SpecialRecipe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def special_recipe_params
      params.require(:special_recipe).permit(:Diet_id, :mealRecipe_id)
    end
end
