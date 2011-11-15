require 'test_helper'

class TableBookingsControllerTest < ActionController::TestCase
  setup do
    @table_booking = table_bookings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:table_bookings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create table_booking" do
    assert_difference('TableBooking.count') do
      post :create, table_booking: @table_booking.attributes
    end

    assert_redirected_to table_booking_path(assigns(:table_booking))
  end

  test "should show table_booking" do
    get :show, id: @table_booking.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @table_booking.to_param
    assert_response :success
  end

  test "should update table_booking" do
    put :update, id: @table_booking.to_param, table_booking: @table_booking.attributes
    assert_redirected_to table_booking_path(assigns(:table_booking))
  end

  test "should destroy table_booking" do
    assert_difference('TableBooking.count', -1) do
      delete :destroy, id: @table_booking.to_param
    end

    assert_redirected_to table_bookings_path
  end
end
