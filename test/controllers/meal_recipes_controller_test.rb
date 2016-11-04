require 'test_helper'

class MealRecipesControllerTest < ActionController::TestCase
  setup do
    @meal_recipe = meal_recipes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meal_recipes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create meal_recipe" do
    assert_difference('MealRecipe.count') do
      post :create, meal_recipe: { dateOfUpload: @meal_recipe.dateOfUpload, difficultyLevel: @meal_recipe.difficultyLevel, image: @meal_recipe.image, instructions: @meal_recipe.instructions, mealType: @meal_recipe.mealType, recipeName: @meal_recipe.recipeName, servingQuantity: @meal_recipe.servingQuantity, user_id: @meal_recipe.user_id }
    end

    assert_redirected_to meal_recipe_path(assigns(:meal_recipe))
  end

  test "should show meal_recipe" do
    get :show, id: @meal_recipe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @meal_recipe
    assert_response :success
  end

  test "should update meal_recipe" do
    patch :update, id: @meal_recipe, meal_recipe: { dateOfUpload: @meal_recipe.dateOfUpload, difficultyLevel: @meal_recipe.difficultyLevel, image: @meal_recipe.image, instructions: @meal_recipe.instructions, mealType: @meal_recipe.mealType, recipeName: @meal_recipe.recipeName, servingQuantity: @meal_recipe.servingQuantity, user_id: @meal_recipe.user_id }
    assert_redirected_to meal_recipe_path(assigns(:meal_recipe))
  end

  test "should destroy meal_recipe" do
    assert_difference('MealRecipe.count', -1) do
      delete :destroy, id: @meal_recipe
    end

    assert_redirected_to meal_recipes_path
  end
end
