require 'test_helper'

class RoomsControllerTest < ActionController::TestCase
  setup do
    @room = rooms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rooms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create room" do
    assert_difference('Room.count') do
      post :create, room: { address: @room.address, city_id: @room.city_id, description: @room.description, is_authorized: @room.is_authorized, latitude: @room.latitude, longitude: @room.longitude, minimum_days: @room.minimum_days, name: @room.name, price: @room.price, rules: @room.rules, user_id: @room.user_id }
    end

    assert_redirected_to room_path(assigns(:room))
  end

  test "should show room" do
    get :show, id: @room
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @room
    assert_response :success
  end

  test "should update room" do
    patch :update, id: @room, room: { address: @room.address, city_id: @room.city_id, description: @room.description, is_authorized: @room.is_authorized, latitude: @room.latitude, longitude: @room.longitude, minimum_days: @room.minimum_days, name: @room.name, price: @room.price, rules: @room.rules, user_id: @room.user_id }
    assert_redirected_to room_path(assigns(:room))
  end

  test "should destroy room" do
    assert_difference('Room.count', -1) do
      delete :destroy, id: @room
    end

    assert_redirected_to rooms_path
  end
end
