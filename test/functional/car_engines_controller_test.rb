require 'test_helper'

class CarEnginesControllerTest < ActionController::TestCase
  setup do
    @car_engine = car_engines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:car_engines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create car_engine" do
    assert_difference('CarEngine.count') do
      post :create, car_engine: { acceleration: @car_engine.acceleration, description: @car_engine.description, name: @car_engine.name, power: @car_engine.power, price: @car_engine.price, standart: @car_engine.standart, transmision: @car_engine.transmision }
    end

    assert_redirected_to car_engine_path(assigns(:car_engine))
  end

  test "should show car_engine" do
    get :show, id: @car_engine
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @car_engine
    assert_response :success
  end

  test "should update car_engine" do
    put :update, id: @car_engine, car_engine: { acceleration: @car_engine.acceleration, description: @car_engine.description, name: @car_engine.name, power: @car_engine.power, price: @car_engine.price, standart: @car_engine.standart, transmision: @car_engine.transmision }
    assert_redirected_to car_engine_path(assigns(:car_engine))
  end

  test "should destroy car_engine" do
    assert_difference('CarEngine.count', -1) do
      delete :destroy, id: @car_engine
    end

    assert_redirected_to car_engines_path
  end
end
