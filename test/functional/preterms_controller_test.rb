require 'test_helper'

class PretermsControllerTest < ActionController::TestCase
  setup do
    @preterm = preterms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:preterms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create preterm" do
    assert_difference('Preterm.count') do
      post :create, preterm: { CLD: @preterm.CLD, IMV: @preterm.IMV, IVH12: @preterm.IVH12, IVH34: @preterm.IVH34, gender: @preterm.gender, gestation: @preterm.gestation, homeox: @preterm.homeox, nec: @preterm.nec, sga: @preterm.sga, singleton: @preterm.singleton, steroids: @preterm.steroids, survival: @preterm.survival }
    end

    assert_redirected_to preterm_path(assigns(:preterm))
  end

  test "should show preterm" do
    get :show, id: @preterm
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @preterm
    assert_response :success
  end

  test "should update preterm" do
    put :update, id: @preterm, preterm: { CLD: @preterm.CLD, IMV: @preterm.IMV, IVH12: @preterm.IVH12, IVH34: @preterm.IVH34, gender: @preterm.gender, gestation: @preterm.gestation, homeox: @preterm.homeox, nec: @preterm.nec, sga: @preterm.sga, singleton: @preterm.singleton, steroids: @preterm.steroids, survival: @preterm.survival }
    assert_redirected_to preterm_path(assigns(:preterm))
  end

  test "should destroy preterm" do
    assert_difference('Preterm.count', -1) do
      delete :destroy, id: @preterm
    end

    assert_redirected_to preterms_path
  end
end
