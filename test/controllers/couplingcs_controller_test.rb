require 'test_helper'

class CouplingcsControllerTest < ActionController::TestCase
  setup do
    @couplingc = couplingcs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:couplingcs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create couplingc" do
    assert_difference('Couplingc.count') do
      post :create, couplingc: { amountc: @couplingc.amountc, buffera: @couplingc.buffera, bufferb: @couplingc.bufferb, bufferc: @couplingc.bufferc, bufferd: @couplingc.bufferd, cnmr_id: @couplingc.cnmr_id, cnmrbracket_id: @couplingc.cnmrbracket_id, coupling: @couplingc.coupling, description_id: @couplingc.description_id, fulldoc_id: @couplingc.fulldoc_id, multiplet: @couplingc.multiplet, nmrdetailc_id: @couplingc.nmrdetailc_id, oka: @couplingc.oka, okb: @couplingc.okb, signal: @couplingc.signal, singlepart_id: @couplingc.singlepart_id }
    end

    assert_redirected_to couplingc_path(assigns(:couplingc))
  end

  test "should show couplingc" do
    get :show, id: @couplingc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @couplingc
    assert_response :success
  end

  test "should update couplingc" do
    patch :update, id: @couplingc, couplingc: { amountc: @couplingc.amountc, buffera: @couplingc.buffera, bufferb: @couplingc.bufferb, bufferc: @couplingc.bufferc, bufferd: @couplingc.bufferd, cnmr_id: @couplingc.cnmr_id, cnmrbracket_id: @couplingc.cnmrbracket_id, coupling: @couplingc.coupling, description_id: @couplingc.description_id, fulldoc_id: @couplingc.fulldoc_id, multiplet: @couplingc.multiplet, nmrdetailc_id: @couplingc.nmrdetailc_id, oka: @couplingc.oka, okb: @couplingc.okb, signal: @couplingc.signal, singlepart_id: @couplingc.singlepart_id }
    assert_redirected_to couplingc_path(assigns(:couplingc))
  end

  test "should destroy couplingc" do
    assert_difference('Couplingc.count', -1) do
      delete :destroy, id: @couplingc
    end

    assert_redirected_to couplingcs_path
  end
end
