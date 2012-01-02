require 'test_helper'

class RfqLinesControllerTest < ActionController::TestCase
  setup do
    @rfq_line = rfq_lines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rfq_lines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rfq_line" do
    assert_difference('RfqLine.count') do
      post :create, rfq_line: @rfq_line.attributes
    end

    assert_redirected_to rfq_line_path(assigns(:rfq_line))
  end

  test "should show rfq_line" do
    get :show, id: @rfq_line.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rfq_line.to_param
    assert_response :success
  end

  test "should update rfq_line" do
    put :update, id: @rfq_line.to_param, rfq_line: @rfq_line.attributes
    assert_redirected_to rfq_line_path(assigns(:rfq_line))
  end

  test "should destroy rfq_line" do
    assert_difference('RfqLine.count', -1) do
      delete :destroy, id: @rfq_line.to_param
    end

    assert_redirected_to rfq_lines_path
  end
end
