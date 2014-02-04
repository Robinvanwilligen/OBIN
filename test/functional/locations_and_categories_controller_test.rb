require 'test_helper'

class LocationsAndCategoriesControllerTest < ActionController::TestCase
  setup do
    @locations_and_category = locations_and_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:locations_and_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create locations_and_category" do
    assert_difference('LocationsAndCategory.count') do
      post :create, locations_and_category: {  }
    end

    assert_redirected_to locations_and_category_path(assigns(:locations_and_category))
  end

  test "should show locations_and_category" do
    get :show, id: @locations_and_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @locations_and_category
    assert_response :success
  end

  test "should update locations_and_category" do
    put :update, id: @locations_and_category, locations_and_category: {  }
    assert_redirected_to locations_and_category_path(assigns(:locations_and_category))
  end

  test "should destroy locations_and_category" do
    assert_difference('LocationsAndCategory.count', -1) do
      delete :destroy, id: @locations_and_category
    end

    assert_redirected_to locations_and_categories_path
  end
end
