require 'test_helper'

class SumhsControllerTest < ActionController::TestCase
  setup do
    @sumh = sumhs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sumhs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sumh" do
    assert_difference('Sumh.count') do
      post :create, sumh: { all: @sumh.all, coupling_id: @sumh.coupling_id, description_id: @sumh.description_id, fill1: @sumh.fill1, fill2: @sumh.fill2, fulldoc_id: @sumh.fulldoc_id, hnmr_id: @sumh.hnmr_id, nmrdetailh_id: @sumh.nmrdetailh_id, oka: @sumh.oka, okb: @sumh.okb, okc: @sumh.okc, okd: @sumh.okd, singlepart_id: @sumh.singlepart_id, value: @sumh.value }
    end

    assert_redirected_to sumh_path(assigns(:sumh))
  end

  test "should show sumh" do
    get :show, id: @sumh
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sumh
    assert_response :success
  end

  test "should update sumh" do
    patch :update, id: @sumh, sumh: { all: @sumh.all, coupling_id: @sumh.coupling_id, description_id: @sumh.description_id, fill1: @sumh.fill1, fill2: @sumh.fill2, fulldoc_id: @sumh.fulldoc_id, hnmr_id: @sumh.hnmr_id, nmrdetailh_id: @sumh.nmrdetailh_id, oka: @sumh.oka, okb: @sumh.okb, okc: @sumh.okc, okd: @sumh.okd, singlepart_id: @sumh.singlepart_id, value: @sumh.value }
    assert_redirected_to sumh_path(assigns(:sumh))
  end

  test "should destroy sumh" do
    assert_difference('Sumh.count', -1) do
      delete :destroy, id: @sumh
    end

    assert_redirected_to sumhs_path
  end
end
