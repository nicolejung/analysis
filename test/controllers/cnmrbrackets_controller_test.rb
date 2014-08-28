require 'test_helper'

class CnmrbracketsControllerTest < ActionController::TestCase
  setup do
    @cnmrbracket = cnmrbrackets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cnmrbrackets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cnmrbracket" do
    assert_difference('Cnmrbracket.count') do
      post :create, cnmrbracket: { adaptc: @cnmrbracket.adaptc, amountc: @cnmrbracket.amountc, buffera: @cnmrbracket.buffera, bufferb: @cnmrbracket.bufferb, cnmr_id: @cnmrbracket.cnmr_id, countc: @cnmrbracket.countc, coupling: @cnmrbracket.coupling, description_id: @cnmrbracket.description_id, fulldoc_id: @cnmrbracket.fulldoc_id, multiplet: @cnmrbracket.multiplet, nmrdetailc_id: @cnmrbracket.nmrdetailc_id, oka: @cnmrbracket.oka, okb: @cnmrbracket.okb, signal: @cnmrbracket.signal, singlepart_id: @cnmrbracket.singlepart_id }
    end

    assert_redirected_to cnmrbracket_path(assigns(:cnmrbracket))
  end

  test "should show cnmrbracket" do
    get :show, id: @cnmrbracket
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cnmrbracket
    assert_response :success
  end

  test "should update cnmrbracket" do
    patch :update, id: @cnmrbracket, cnmrbracket: { adaptc: @cnmrbracket.adaptc, amountc: @cnmrbracket.amountc, buffera: @cnmrbracket.buffera, bufferb: @cnmrbracket.bufferb, cnmr_id: @cnmrbracket.cnmr_id, countc: @cnmrbracket.countc, coupling: @cnmrbracket.coupling, description_id: @cnmrbracket.description_id, fulldoc_id: @cnmrbracket.fulldoc_id, multiplet: @cnmrbracket.multiplet, nmrdetailc_id: @cnmrbracket.nmrdetailc_id, oka: @cnmrbracket.oka, okb: @cnmrbracket.okb, signal: @cnmrbracket.signal, singlepart_id: @cnmrbracket.singlepart_id }
    assert_redirected_to cnmrbracket_path(assigns(:cnmrbracket))
  end

  test "should destroy cnmrbracket" do
    assert_difference('Cnmrbracket.count', -1) do
      delete :destroy, id: @cnmrbracket
    end

    assert_redirected_to cnmrbrackets_path
  end
end
