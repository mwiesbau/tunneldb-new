require 'test_helper'

class GroundwaterControlsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:groundwater_controls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create groundwater_control" do
    assert_difference('GroundwaterControl.count') do
      post :create, :groundwater_control => { }
    end

    assert_redirected_to groundwater_control_path(assigns(:groundwater_control))
  end

  test "should show groundwater_control" do
    get :show, :id => groundwater_controls(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => groundwater_controls(:one).to_param
    assert_response :success
  end

  test "should update groundwater_control" do
    put :update, :id => groundwater_controls(:one).to_param, :groundwater_control => { }
    assert_redirected_to groundwater_control_path(assigns(:groundwater_control))
  end

  test "should destroy groundwater_control" do
    assert_difference('GroundwaterControl.count', -1) do
      delete :destroy, :id => groundwater_controls(:one).to_param
    end

    assert_redirected_to groundwater_controls_path
  end
end
