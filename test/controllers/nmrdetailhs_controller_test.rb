require 'test_helper'

class NmrdetailhsControllerTest < ActionController::TestCase
  setup do
    @nmrdetailh = nmrdetailhs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nmrdetailhs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nmrdetailh" do
    assert_difference('Nmrdetailh.count') do
      post :create, nmrdetailh: { area: @nmrdetailh.area, description_id: @nmrdetailh.description_id, fill1: @nmrdetailh.fill1, fill2: @nmrdetailh.fill2, first: @nmrdetailh.first, fulldoc_id: @nmrdetailh.fulldoc_id, hamount: @nmrdetailh.hamount, hnmr_id: @nmrdetailh.hnmr_id, last: @nmrdetailh.last, oka: @nmrdetailh.oka, okb: @nmrdetailh.okb, okc: @nmrdetailh.okc, okd: @nmrdetailh.okd, shift: @nmrdetailh.shift, signal: @nmrdetailh.signal, singlepart_id: @nmrdetailh.singlepart_id }
    end

    assert_redirected_to nmrdetailh_path(assigns(:nmrdetailh))
  end

  test "should show nmrdetailh" do
    get :show, id: @nmrdetailh
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nmrdetailh
    assert_response :success
  end

  test "should update nmrdetailh" do
    patch :update, id: @nmrdetailh, nmrdetailh: { area: @nmrdetailh.area, description_id: @nmrdetailh.description_id, fill1: @nmrdetailh.fill1, fill2: @nmrdetailh.fill2, first: @nmrdetailh.first, fulldoc_id: @nmrdetailh.fulldoc_id, hamount: @nmrdetailh.hamount, hnmr_id: @nmrdetailh.hnmr_id, last: @nmrdetailh.last, oka: @nmrdetailh.oka, okb: @nmrdetailh.okb, okc: @nmrdetailh.okc, okd: @nmrdetailh.okd, shift: @nmrdetailh.shift, signal: @nmrdetailh.signal, singlepart_id: @nmrdetailh.singlepart_id }
    assert_redirected_to nmrdetailh_path(assigns(:nmrdetailh))
  end

  test "should destroy nmrdetailh" do
    assert_difference('Nmrdetailh.count', -1) do
      delete :destroy, id: @nmrdetailh
    end

    assert_redirected_to nmrdetailhs_path
  end
end
