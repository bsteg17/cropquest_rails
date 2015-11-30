require 'test_helper'

class EditProfileRedirectsControllerTest < ActionController::TestCase
  setup do
    @edit_profile_redirect = edit_profile_redirects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:edit_profile_redirects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create edit_profile_redirect" do
    assert_difference('EditProfileRedirect.count') do
      post :create, edit_profile_redirect: {  }
    end

    assert_redirected_to edit_profile_redirect_path(assigns(:edit_profile_redirect))
  end

  test "should show edit_profile_redirect" do
    get :show, id: @edit_profile_redirect
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @edit_profile_redirect
    assert_response :success
  end

  test "should update edit_profile_redirect" do
    patch :update, id: @edit_profile_redirect, edit_profile_redirect: {  }
    assert_redirected_to edit_profile_redirect_path(assigns(:edit_profile_redirect))
  end

  test "should destroy edit_profile_redirect" do
    assert_difference('EditProfileRedirect.count', -1) do
      delete :destroy, id: @edit_profile_redirect
    end

    assert_redirected_to edit_profile_redirects_path
  end
end
