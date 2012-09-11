require 'test_helper'

class CarOptionsControllerTest < ActionController::TestCase
  setup do
    @car_option = car_options(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:car_options)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create car_option" do
    assert_difference('CarOption.count') do
      post :create, car_option: { category: @car_option.category, name: @car_option.name, price: @car_option.price }
    end

    assert_redirected_to car_option_path(assigns(:car_option))
  end

  test "should show car_option" do
    get :show, id: @car_option
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @car_option
    assert_response :success
  end

  test "should update car_option" do
    put :update, id: @car_option, car_option: { category: @car_option.category, name: @car_option.name, price: @car_option.price }
    assert_redirected_to car_option_path(assigns(:car_option))
  end

  test "should destroy car_option" do
    assert_difference('CarOption.count', -1) do
      delete :destroy, id: @car_option
    end

    assert_redirected_to car_options_path
  end
end
