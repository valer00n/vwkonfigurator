require 'test_helper'

class CarGroupsControllerTest < ActionController::TestCase
  setup do
    @car_group = car_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:car_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create car_group" do
    assert_difference('CarGroup.count') do
      post :create, car_group: { name: @car_group.name }
    end

    assert_redirected_to car_group_path(assigns(:car_group))
  end

  test "should show car_group" do
    get :show, id: @car_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @car_group
    assert_response :success
  end

  test "should update car_group" do
    put :update, id: @car_group, car_group: { name: @car_group.name }
    assert_redirected_to car_group_path(assigns(:car_group))
  end

  test "should destroy car_group" do
    assert_difference('CarGroup.count', -1) do
      delete :destroy, id: @car_group
    end

    assert_redirected_to car_groups_path
  end
end
