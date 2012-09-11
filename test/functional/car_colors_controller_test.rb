require 'test_helper'

class CarColorsControllerTest < ActionController::TestCase
  setup do
    @car_color = car_colors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:car_colors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create car_color" do
    assert_difference('CarColor.count') do
      post :create, car_color: { image: @car_color.image, name: @car_color.name, price: @car_color.price }
    end

    assert_redirected_to car_color_path(assigns(:car_color))
  end

  test "should show car_color" do
    get :show, id: @car_color
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @car_color
    assert_response :success
  end

  test "should update car_color" do
    put :update, id: @car_color, car_color: { image: @car_color.image, name: @car_color.name, price: @car_color.price }
    assert_redirected_to car_color_path(assigns(:car_color))
  end

  test "should destroy car_color" do
    assert_difference('CarColor.count', -1) do
      delete :destroy, id: @car_color
    end

    assert_redirected_to car_colors_path
  end
end
