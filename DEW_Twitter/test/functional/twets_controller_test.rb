require 'test_helper'

class TwetsControllerTest < ActionController::TestCase
  setup do
    @twet = twets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:twets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create twet" do
    assert_difference('Twet.count') do
      post :create, twet: @twet.attributes
    end

    assert_redirected_to twet_path(assigns(:twet))
  end

  test "should show twet" do
    get :show, id: @twet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @twet
    assert_response :success
  end

  test "should update twet" do
    put :update, id: @twet, twet: @twet.attributes
    assert_redirected_to twet_path(assigns(:twet))
  end

  test "should destroy twet" do
    assert_difference('Twet.count', -1) do
      delete :destroy, id: @twet
    end

    assert_redirected_to twets_path
  end
end
