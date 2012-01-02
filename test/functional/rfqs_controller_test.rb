require 'test_helper'

class RfqsControllerTest < ActionController::TestCase
  setup do
    @rfq = rfqs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rfqs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rfq" do
    assert_difference('Rfq.count') do
      post :create, rfq: @rfq.attributes
    end

    assert_redirected_to rfq_path(assigns(:rfq))
  end

  test "should show rfq" do
    get :show, id: @rfq.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rfq.to_param
    assert_response :success
  end

  test "should update rfq" do
    put :update, id: @rfq.to_param, rfq: @rfq.attributes
    assert_redirected_to rfq_path(assigns(:rfq))
  end

  test "should destroy rfq" do
    assert_difference('Rfq.count', -1) do
      delete :destroy, id: @rfq.to_param
    end

    assert_redirected_to rfqs_path
  end
end
