require 'test_helper'

class SelectReceiversControllerTest < ActionController::TestCase
  setup do
    @select_receiver = select_receivers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:select_receivers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create select_receiver" do
    assert_difference('SelectReceiver.count') do
      post :create, :select_receiver => @select_receiver.attributes
    end

    assert_redirected_to select_receiver_path(assigns(:select_receiver))
  end

  test "should show select_receiver" do
    get :show, :id => @select_receiver.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @select_receiver.to_param
    assert_response :success
  end

  test "should update select_receiver" do
    put :update, :id => @select_receiver.to_param, :select_receiver => @select_receiver.attributes
    assert_redirected_to select_receiver_path(assigns(:select_receiver))
  end

  test "should destroy select_receiver" do
    assert_difference('SelectReceiver.count', -1) do
      delete :destroy, :id => @select_receiver.to_param
    end

    assert_redirected_to select_receivers_path
  end
end
