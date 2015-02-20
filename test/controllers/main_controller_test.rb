require 'test_helper'

class MainControllerTest < ActionController::TestCase
  test "index" do
    get :index
    assert_response :success, @response.body
  end

  test "create" do
    post :create, :id => "1982-12-18"
    assert_response :redirect, @response.body
    assert_redirected_to main_path("1982-12-18")
  end

  test "show" do
    get :show, :id => "1982-12-18"
    assert_response :success, @response.body
  end
end
