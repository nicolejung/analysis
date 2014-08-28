require 'test_helper'

class DescriptionsControllerTest < ActionController::TestCase
  setup do
    @description = descriptions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:descriptions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create description" do
    assert_difference('Description.count') do
      post :create, description: { fill1: @description.fill1, fill2: @description.fill2, fulldescribe: @description.fulldescribe, fulldoc_id: @description.fulldoc_id, oka: @description.oka, okb: @description.okb, okc: @description.okc, okd: @description.okd, purification: @description.purification, rfvalue: @description.rfvalue, samplename: @description.samplename, singlepart_id: @description.singlepart_id, yield: @description.yield }
    end

    assert_redirected_to description_path(assigns(:description))
  end

  test "should show description" do
    get :show, id: @description
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @description
    assert_response :success
  end

  test "should update description" do
    patch :update, id: @description, description: { fill1: @description.fill1, fill2: @description.fill2, fulldescribe: @description.fulldescribe, fulldoc_id: @description.fulldoc_id, oka: @description.oka, okb: @description.okb, okc: @description.okc, okd: @description.okd, purification: @description.purification, rfvalue: @description.rfvalue, samplename: @description.samplename, singlepart_id: @description.singlepart_id, yield: @description.yield }
    assert_redirected_to description_path(assigns(:description))
  end

  test "should destroy description" do
    assert_difference('Description.count', -1) do
      delete :destroy, id: @description
    end

    assert_redirected_to descriptions_path
  end
end
