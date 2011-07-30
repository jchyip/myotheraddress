require 'test_helper'

class ReceiverProfilesControllerTest < ActionController::TestCase
  setup do
    @receiver_profile = receiver_profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:receiver_profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create receiver_profile" do
    assert_difference('ReceiverProfile.count') do
      post :create, :receiver_profile => @receiver_profile.attributes
    end

    assert_redirected_to receiver_profile_path(assigns(:receiver_profile))
  end

  test "should show receiver_profile" do
    get :show, :id => @receiver_profile.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @receiver_profile.to_param
    assert_response :success
  end

  test "should update receiver_profile" do
    put :update, :id => @receiver_profile.to_param, :receiver_profile => @receiver_profile.attributes
    assert_redirected_to receiver_profile_path(assigns(:receiver_profile))
  end

  test "should destroy receiver_profile" do
    assert_difference('ReceiverProfile.count', -1) do
      delete :destroy, :id => @receiver_profile.to_param
    end

    assert_redirected_to receiver_profiles_path
  end
end
