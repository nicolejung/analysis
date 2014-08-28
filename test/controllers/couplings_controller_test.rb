require 'test_helper'

class CouplingsControllerTest < ActionController::TestCase
  setup do
    @coupling = couplings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:couplings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create coupling" do
    assert_difference('Coupling.count') do
      post :create, coupling: { description_id: @coupling.description_id, detail: @coupling.detail, distance: @coupling.distance, fill1: @coupling.fill1, fulldoc_id: @coupling.fulldoc_id, givej: @coupling.givej, hnmr_id: @coupling.hnmr_id, hz: @coupling.hz, multiplet: @coupling.multiplet, nmrdetailh_id: @coupling.nmrdetailh_id, oka: @coupling.oka, okb: @coupling.okb, singlepart_id: @coupling.singlepart_id }
    end

    assert_redirected_to coupling_path(assigns(:coupling))
  end

  test "should show coupling" do
    get :show, id: @coupling
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @coupling
    assert_response :success
  end

  test "should update coupling" do
    patch :update, id: @coupling, coupling: { description_id: @coupling.description_id, detail: @coupling.detail, distance: @coupling.distance, fill1: @coupling.fill1, fulldoc_id: @coupling.fulldoc_id, givej: @coupling.givej, hnmr_id: @coupling.hnmr_id, hz: @coupling.hz, multiplet: @coupling.multiplet, nmrdetailh_id: @coupling.nmrdetailh_id, oka: @coupling.oka, okb: @coupling.okb, singlepart_id: @coupling.singlepart_id }
    assert_redirected_to coupling_path(assigns(:coupling))
  end

  test "should destroy coupling" do
    assert_difference('Coupling.count', -1) do
      delete :destroy, id: @coupling
    end

    assert_redirected_to couplings_path
  end
end
