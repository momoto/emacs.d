require 'test_helper'

class OpendataControllerTest < ActionController::TestCase
  test "should get list" do
    get :list
    assert_response :success
  end

  test "should get meta" do
    get(:meta, {'id' => '0000150001'})
    assert_response :success
    assert_not_nil assigns(:info)
    assert_not_nil assigns(:meta)
  end

  test "should get stats" do
    get(:stats, {'id' => '0000150001'})
    assert_response :success
    assert_not_nil assigns(:info)
    assert_not_nil assigns(:stats)
  end

  test "should return 404 for invalid request" do
    get(:meta, {'id' => ''})
    assert_response :missing

    get(:stats, {'id' => ''})
    assert_response :missing
  end
end
