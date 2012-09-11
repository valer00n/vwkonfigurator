require 'test_helper'

class CarInteriorColorsControllerTest < ActionController::TestCase
  setup do
    @car_interior_color = car_interior_colors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:car_interior_colors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create car_interior_color" do
    assert_difference('CarInteriorColor.count') do
      post :create, car_interior_color: { description: @car_interior_color.description, image: @car_interior_color.image, name: @car_interior_color.name }
    end

    assert_redirected_to car_interior_color_path(assigns(:car_interior_color))
  end

  test "should show car_interior_color" do
    get :show, id: @car_interior_color
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @car_interior_color
    assert_response :success
  end

  test "should update car_interior_color" do
    put :update, id: @car_interior_color, car_interior_color: { description: @car_interior_color.description, image: @car_interior_color.image, name: @car_interior_color.name }
    assert_redirected_to car_interior_color_path(assigns(:car_interior_color))
  end

  test "should destroy car_interior_color" do
    assert_difference('CarInteriorColor.count', -1) do
      delete :destroy, id: @car_interior_color
    end

    assert_redirected_to car_interior_colors_path
  end
end
