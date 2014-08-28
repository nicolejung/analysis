require 'test_helper'

class AdditionalsControllerTest < ActionController::TestCase
  setup do
    @additional = additionals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:additionals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create additional" do
    assert_difference('Additional.count') do
      post :create, additional: { bnmr: @additional.bnmr, buffer1: @additional.buffer1, buffer2: @additional.buffer2, buffer3: @additional.buffer3, description_id: @additional.description_id, fnmr: @additional.fnmr, fulldoc_id: @additional.fulldoc_id, hrms: @additional.hrms, mass1: @additional.mass1, mass3: @additional.mass3, nnmr: @additional.nnmr, oka: @additional.oka, okb: @additional.okb, pnmr: @additional.pnmr, raman: @additional.raman, singlepart_id: @additional.singlepart_id, uv: @additional.uv }
    end

    assert_redirected_to additional_path(assigns(:additional))
  end

  test "should show additional" do
    get :show, id: @additional
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @additional
    assert_response :success
  end

  test "should update additional" do
    patch :update, id: @additional, additional: { bnmr: @additional.bnmr, buffer1: @additional.buffer1, buffer2: @additional.buffer2, buffer3: @additional.buffer3, description_id: @additional.description_id, fnmr: @additional.fnmr, fulldoc_id: @additional.fulldoc_id, hrms: @additional.hrms, mass1: @additional.mass1, mass3: @additional.mass3, nnmr: @additional.nnmr, oka: @additional.oka, okb: @additional.okb, pnmr: @additional.pnmr, raman: @additional.raman, singlepart_id: @additional.singlepart_id, uv: @additional.uv }
    assert_redirected_to additional_path(assigns(:additional))
  end

  test "should destroy additional" do
    assert_difference('Additional.count', -1) do
      delete :destroy, id: @additional
    end

    assert_redirected_to additionals_path
  end
end
