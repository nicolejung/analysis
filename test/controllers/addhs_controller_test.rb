require 'test_helper'

class AddhsControllerTest < ActionController::TestCase
  setup do
    @addh = addhs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:addhs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create addh" do
    assert_difference('Addh.count') do
      post :create, addh: { all: @addh.all, description_id: @addh.description_id, fill1: @addh.fill1, fill2: @addh.fill2, fulldoc_id: @addh.fulldoc_id, hnmr_id: @addh.hnmr_id, nmrdetailh_id: @addh.nmrdetailh_id, oka: @addh.oka, okb: @addh.okb, okc: @addh.okc, okd: @addh.okd, relation_id: @addh.relation_id, singlepart_id: @addh.singlepart_id, value: @addh.value }
    end

    assert_redirected_to addh_path(assigns(:addh))
  end

  test "should show addh" do
    get :show, id: @addh
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @addh
    assert_response :success
  end

  test "should update addh" do
    patch :update, id: @addh, addh: { all: @addh.all, description_id: @addh.description_id, fill1: @addh.fill1, fill2: @addh.fill2, fulldoc_id: @addh.fulldoc_id, hnmr_id: @addh.hnmr_id, nmrdetailh_id: @addh.nmrdetailh_id, oka: @addh.oka, okb: @addh.okb, okc: @addh.okc, okd: @addh.okd, relation_id: @addh.relation_id, singlepart_id: @addh.singlepart_id, value: @addh.value }
    assert_redirected_to addh_path(assigns(:addh))
  end

  test "should destroy addh" do
    assert_difference('Addh.count', -1) do
      delete :destroy, id: @addh
    end

    assert_redirected_to addhs_path
  end
end
