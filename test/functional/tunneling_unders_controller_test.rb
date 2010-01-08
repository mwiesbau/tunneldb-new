require 'test_helper'

class TunnelingUndersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tunneling_unders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tunneling_under" do
    assert_difference('TunnelingUnder.count') do
      post :create, :tunneling_under => { }
    end

    assert_redirected_to tunneling_under_path(assigns(:tunneling_under))
  end

  test "should show tunneling_under" do
    get :show, :id => tunneling_unders(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => tunneling_unders(:one).to_param
    assert_response :success
  end

  test "should update tunneling_under" do
    put :update, :id => tunneling_unders(:one).to_param, :tunneling_under => { }
    assert_redirected_to tunneling_under_path(assigns(:tunneling_under))
  end

  test "should destroy tunneling_under" do
    assert_difference('TunnelingUnder.count', -1) do
      delete :destroy, :id => tunneling_unders(:one).to_param
    end

    assert_redirected_to tunneling_unders_path
  end
end
