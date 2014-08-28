require 'test_helper'

class CnmrsControllerTest < ActionController::TestCase
  setup do
    @cnmr = cnmrs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cnmrs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cnmr" do
    assert_difference('Cnmr.count') do
      post :create, cnmr: { buffera: @cnmr.buffera, description_id: @cnmr.description_id, filename: @cnmr.filename, fulldoc_id: @cnmr.fulldoc_id, instrument: @cnmr.instrument, method: @cnmr.method, name: @cnmr.name, oka: @cnmr.oka, okb: @cnmr.okb, okc: @cnmr.okc, okd: @cnmr.okd, partanalysis: @cnmr.partanalysis, pulseprogram: @cnmr.pulseprogram, scans: @cnmr.scans, singlepart_id: @cnmr.singlepart_id, solvent1: @cnmr.solvent1, solvent2: @cnmr.solvent2, sumc: @cnmr.sumc, temp: @cnmr.temp }
    end

    assert_redirected_to cnmr_path(assigns(:cnmr))
  end

  test "should show cnmr" do
    get :show, id: @cnmr
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cnmr
    assert_response :success
  end

  test "should update cnmr" do
    patch :update, id: @cnmr, cnmr: { buffera: @cnmr.buffera, description_id: @cnmr.description_id, filename: @cnmr.filename, fulldoc_id: @cnmr.fulldoc_id, instrument: @cnmr.instrument, method: @cnmr.method, name: @cnmr.name, oka: @cnmr.oka, okb: @cnmr.okb, okc: @cnmr.okc, okd: @cnmr.okd, partanalysis: @cnmr.partanalysis, pulseprogram: @cnmr.pulseprogram, scans: @cnmr.scans, singlepart_id: @cnmr.singlepart_id, solvent1: @cnmr.solvent1, solvent2: @cnmr.solvent2, sumc: @cnmr.sumc, temp: @cnmr.temp }
    assert_redirected_to cnmr_path(assigns(:cnmr))
  end

  test "should destroy cnmr" do
    assert_difference('Cnmr.count', -1) do
      delete :destroy, id: @cnmr
    end

    assert_redirected_to cnmrs_path
  end
end
