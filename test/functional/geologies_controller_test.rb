require File.dirname(__FILE__) + '/../test_helper'

class GeologiesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:geologies)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_geology
    assert_difference('Geology.count') do
      post :create, :geology => { }
    end

    assert_redirected_to geology_path(assigns(:geology))
  end

  def test_should_show_geology
    get :show, :id => geologies(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => geologies(:one).id
    assert_response :success
  end

  def test_should_update_geology
    put :update, :id => geologies(:one).id, :geology => { }
    assert_redirected_to geology_path(assigns(:geology))
  end

  def test_should_destroy_geology
    assert_difference('Geology.count', -1) do
      delete :destroy, :id => geologies(:one).id
    end

    assert_redirected_to geologies_path
  end
end
