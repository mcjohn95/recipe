require 'test_helper'

class SpecialRecipesControllerTest < ActionController::TestCase
  setup do
    @special_recipe = special_recipes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:special_recipes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create special_recipe" do
    assert_difference('SpecialRecipe.count') do
      post :create, special_recipe: { Diet_id: @special_recipe.Diet_id, mealRecipe_id: @special_recipe.mealRecipe_id }
    end

    assert_redirected_to special_recipe_path(assigns(:special_recipe))
  end

  test "should show special_recipe" do
    get :show, id: @special_recipe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @special_recipe
    assert_response :success
  end

  test "should update special_recipe" do
    patch :update, id: @special_recipe, special_recipe: { Diet_id: @special_recipe.Diet_id, mealRecipe_id: @special_recipe.mealRecipe_id }
    assert_redirected_to special_recipe_path(assigns(:special_recipe))
  end

  test "should destroy special_recipe" do
    assert_difference('SpecialRecipe.count', -1) do
      delete :destroy, id: @special_recipe
    end

    assert_redirected_to special_recipes_path
  end
end
