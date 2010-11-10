require 'test_helper'

class AuthorisationsControllerTest < ActionController::TestCase
  setup do
    @authorisation = authorisations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:authorisations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create authorisation" do
    assert_difference('Authorisation.count') do
      post :create, :authorisation => @authorisation.attributes
    end

    assert_redirected_to authorisation_path(assigns(:authorisation))
  end

  test "should show authorisation" do
    get :show, :id => @authorisation.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @authorisation.to_param
    assert_response :success
  end

  test "should update authorisation" do
    put :update, :id => @authorisation.to_param, :authorisation => @authorisation.attributes
    assert_redirected_to authorisation_path(assigns(:authorisation))
  end

  test "should destroy authorisation" do
    assert_difference('Authorisation.count', -1) do
      delete :destroy, :id => @authorisation.to_param
    end

    assert_redirected_to authorisations_path
  end
end
