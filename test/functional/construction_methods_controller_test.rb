require 'test_helper'

class ConstructionMethodsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:construction_methods)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create construction_method" do
    assert_difference('ConstructionMethod.count') do
      post :create, :construction_method => { }
    end

    assert_redirected_to construction_method_path(assigns(:construction_method))
  end

  test "should show construction_method" do
    get :show, :id => construction_methods(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => construction_methods(:one).to_param
    assert_response :success
  end

  test "should update construction_method" do
    put :update, :id => construction_methods(:one).to_param, :construction_method => { }
    assert_redirected_to construction_method_path(assigns(:construction_method))
  end

  test "should destroy construction_method" do
    assert_difference('ConstructionMethod.count', -1) do
      delete :destroy, :id => construction_methods(:one).to_param
    end

    assert_redirected_to construction_methods_path
  end
end
