require 'test_helper'

class NmrdetailcsControllerTest < ActionController::TestCase
  setup do
    @nmrdetailc = nmrdetailcs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nmrdetailcs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nmrdetailc" do
    assert_difference('Nmrdetailc.count') do
      post :create, nmrdetailc: { buffer1: @nmrdetailc.buffer1, buffer2: @nmrdetailc.buffer2, buffer3: @nmrdetailc.buffer3, cnmr_id: @nmrdetailc.cnmr_id, description_id: @nmrdetailc.description_id, fulldoc_id: @nmrdetailc.fulldoc_id, oka: @nmrdetailc.oka, okb: @nmrdetailc.okb, signal: @nmrdetailc.signal, singlepart_id: @nmrdetailc.singlepart_id }
    end

    assert_redirected_to nmrdetailc_path(assigns(:nmrdetailc))
  end

  test "should show nmrdetailc" do
    get :show, id: @nmrdetailc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nmrdetailc
    assert_response :success
  end

  test "should update nmrdetailc" do
    patch :update, id: @nmrdetailc, nmrdetailc: { buffer1: @nmrdetailc.buffer1, buffer2: @nmrdetailc.buffer2, buffer3: @nmrdetailc.buffer3, cnmr_id: @nmrdetailc.cnmr_id, description_id: @nmrdetailc.description_id, fulldoc_id: @nmrdetailc.fulldoc_id, oka: @nmrdetailc.oka, okb: @nmrdetailc.okb, signal: @nmrdetailc.signal, singlepart_id: @nmrdetailc.singlepart_id }
    assert_redirected_to nmrdetailc_path(assigns(:nmrdetailc))
  end

  test "should destroy nmrdetailc" do
    assert_difference('Nmrdetailc.count', -1) do
      delete :destroy, id: @nmrdetailc
    end

    assert_redirected_to nmrdetailcs_path
  end
end
