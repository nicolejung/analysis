require 'test_helper'

class HnmrsControllerTest < ActionController::TestCase
  setup do
    @hnmr = hnmrs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hnmrs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hnmr" do
    assert_difference('Hnmr.count') do
      post :create, hnmr: { amounth: @hnmr.amounth, analysis: @hnmr.analysis, description_id: @hnmr.description_id, filename: @hnmr.filename, fulldoc_id: @hnmr.fulldoc_id, method: @hnmr.method, mhz: @hnmr.mhz, name: @hnmr.name, oka: @hnmr.oka, okb: @hnmr.okb, okc: @hnmr.okc, okd: @hnmr.okd, pulseprogram: @hnmr.pulseprogram, scans: @hnmr.scans, singlepart_id: @hnmr.singlepart_id, solvent1: @hnmr.solvent1, solvent2: @hnmr.solvent2, temperature: @hnmr.temperature }
    end

    assert_redirected_to hnmr_path(assigns(:hnmr))
  end

  test "should show hnmr" do
    get :show, id: @hnmr
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hnmr
    assert_response :success
  end

  test "should update hnmr" do
    patch :update, id: @hnmr, hnmr: { amounth: @hnmr.amounth, analysis: @hnmr.analysis, description_id: @hnmr.description_id, filename: @hnmr.filename, fulldoc_id: @hnmr.fulldoc_id, method: @hnmr.method, mhz: @hnmr.mhz, name: @hnmr.name, oka: @hnmr.oka, okb: @hnmr.okb, okc: @hnmr.okc, okd: @hnmr.okd, pulseprogram: @hnmr.pulseprogram, scans: @hnmr.scans, singlepart_id: @hnmr.singlepart_id, solvent1: @hnmr.solvent1, solvent2: @hnmr.solvent2, temperature: @hnmr.temperature }
    assert_redirected_to hnmr_path(assigns(:hnmr))
  end

  test "should destroy hnmr" do
    assert_difference('Hnmr.count', -1) do
      delete :destroy, id: @hnmr
    end

    assert_redirected_to hnmrs_path
  end
end
