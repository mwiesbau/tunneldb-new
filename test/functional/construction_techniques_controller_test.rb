require 'test_helper'

class ConstructionTechniquesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:construction_techniques)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create construction_technique" do
    assert_difference('ConstructionTechnique.count') do
      post :create, :construction_technique => { }
    end

    assert_redirected_to construction_technique_path(assigns(:construction_technique))
  end

  test "should show construction_technique" do
    get :show, :id => construction_techniques(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => construction_techniques(:one).to_param
    assert_response :success
  end

  test "should update construction_technique" do
    put :update, :id => construction_techniques(:one).to_param, :construction_technique => { }
    assert_redirected_to construction_technique_path(assigns(:construction_technique))
  end

  test "should destroy construction_technique" do
    assert_difference('ConstructionTechnique.count', -1) do
      delete :destroy, :id => construction_techniques(:one).to_param
    end

    assert_redirected_to construction_techniques_path
  end
end
