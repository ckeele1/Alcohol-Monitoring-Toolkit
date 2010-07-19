require 'test_helper'

class ClientEnrollmentsControllerTest < ActionController::TestCase
  setup do
    @client_enrollment = client_enrollments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:client_enrollments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create client_enrollment" do
    assert_difference('ClientEnrollment.count') do
      post :create, :client_enrollment => @client_enrollment.attributes
    end

    assert_redirected_to client_enrollment_path(assigns(:client_enrollment))
  end

  test "should show client_enrollment" do
    get :show, :id => @client_enrollment.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @client_enrollment.to_param
    assert_response :success
  end

  test "should update client_enrollment" do
    put :update, :id => @client_enrollment.to_param, :client_enrollment => @client_enrollment.attributes
    assert_redirected_to client_enrollment_path(assigns(:client_enrollment))
  end

  test "should destroy client_enrollment" do
    assert_difference('ClientEnrollment.count', -1) do
      delete :destroy, :id => @client_enrollment.to_param
    end

    assert_redirected_to client_enrollments_path
  end
end
