require 'test_helper'

class CategoriesLocationsControllerTest < ActionController::TestCase
  setup do
    @categories_location = categories_locations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:categories_locations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create categories_location" do
    assert_difference('CategoriesLocation.count') do
      post :create, categories_location: { category_id: @categories_location.category_id, location_id: @categories_location.location_id }
    end

    assert_redirected_to categories_location_path(assigns(:categories_location))
  end

  test "should show categories_location" do
    get :show, id: @categories_location
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @categories_location
    assert_response :success
  end

  test "should update categories_location" do
    put :update, id: @categories_location, categories_location: { category_id: @categories_location.category_id, location_id: @categories_location.location_id }
    assert_redirected_to categories_location_path(assigns(:categories_location))
  end

  test "should destroy categories_location" do
    assert_difference('CategoriesLocation.count', -1) do
      delete :destroy, id: @categories_location
    end

    assert_redirected_to categories_locations_path
  end
end
