require 'test_helper'

class SinglepartsControllerTest < ActionController::TestCase
  setup do
    @singlepart = singleparts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:singleparts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create singlepart" do
    assert_difference('Singlepart.count') do
      post :create, singlepart: { bnmr: @singlepart.bnmr, calcc: @singlepart.calcc, calch: @singlepart.calch, cnmr: @singlepart.cnmr, describe: @singlepart.describe, ea: @singlepart.ea, experimental: @singlepart.experimental, fill1: @singlepart.fill1, fnmr: @singlepart.fnmr, fulldoc_id: @singlepart.fulldoc_id, givenc: @singlepart.givenc, givenh: @singlepart.givenh, hnmr: @singlepart.hnmr, ir: @singlepart.ir, mass1: @singlepart.mass1, mass2: @singlepart.mass2, mass3: @singlepart.mass3, nnmr: @singlepart.nnmr, oka: @singlepart.oka, okb: @singlepart.okb, okc: @singlepart.okc, okd: @singlepart.okd, pnmr: @singlepart.pnmr, raman: @singlepart.raman, uv: @singlepart.uv, value: @singlepart.value }
    end

    assert_redirected_to singlepart_path(assigns(:singlepart))
  end

  test "should show singlepart" do
    get :show, id: @singlepart
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @singlepart
    assert_response :success
  end

  test "should update singlepart" do
    patch :update, id: @singlepart, singlepart: { bnmr: @singlepart.bnmr, calcc: @singlepart.calcc, calch: @singlepart.calch, cnmr: @singlepart.cnmr, describe: @singlepart.describe, ea: @singlepart.ea, experimental: @singlepart.experimental, fill1: @singlepart.fill1, fnmr: @singlepart.fnmr, fulldoc_id: @singlepart.fulldoc_id, givenc: @singlepart.givenc, givenh: @singlepart.givenh, hnmr: @singlepart.hnmr, ir: @singlepart.ir, mass1: @singlepart.mass1, mass2: @singlepart.mass2, mass3: @singlepart.mass3, nnmr: @singlepart.nnmr, oka: @singlepart.oka, okb: @singlepart.okb, okc: @singlepart.okc, okd: @singlepart.okd, pnmr: @singlepart.pnmr, raman: @singlepart.raman, uv: @singlepart.uv, value: @singlepart.value }
    assert_redirected_to singlepart_path(assigns(:singlepart))
  end

  test "should destroy singlepart" do
    assert_difference('Singlepart.count', -1) do
      delete :destroy, id: @singlepart
    end

    assert_redirected_to singleparts_path
  end
end
