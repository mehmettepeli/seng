require 'test_helper'

class CarriersControllerTest < ActionController::TestCase
  setup do
    @carrier = carriers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:carriers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create carrier" do
    assert_difference('Carrier.count') do
      post :create, carrier: { annocument_date: @carrier.annocument_date, content: @carrier.content, title: @carrier.title }
    end

    assert_redirected_to carrier_path(assigns(:carrier))
  end

  test "should show carrier" do
    get :show, id: @carrier
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @carrier
    assert_response :success
  end

  test "should update carrier" do
    patch :update, id: @carrier, carrier: { annocument_date: @carrier.annocument_date, content: @carrier.content, title: @carrier.title }
    assert_redirected_to carrier_path(assigns(:carrier))
  end

  test "should destroy carrier" do
    assert_difference('Carrier.count', -1) do
      delete :destroy, id: @carrier
    end

    assert_redirected_to carriers_path
  end
end
