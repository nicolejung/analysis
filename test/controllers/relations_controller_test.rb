require 'test_helper'

class RelationsControllerTest < ActionController::TestCase
  setup do
    @relation = relations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:relations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create relation" do
    assert_difference('Relation.count') do
      post :create, relation: { description_id: @relation.description_id, detail: @relation.detail, distance: @relation.distance, fill1: @relation.fill1, fulldoc_id: @relation.fulldoc_id, givej: @relation.givej, hnmr_id: @relation.hnmr_id, hz: @relation.hz, multiplet: @relation.multiplet, nmrdetailh_id: @relation.nmrdetailh_id, oka: @relation.oka, okb: @relation.okb, singlepart_id: @relation.singlepart_id }
    end

    assert_redirected_to relation_path(assigns(:relation))
  end

  test "should show relation" do
    get :show, id: @relation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @relation
    assert_response :success
  end

  test "should update relation" do
    patch :update, id: @relation, relation: { description_id: @relation.description_id, detail: @relation.detail, distance: @relation.distance, fill1: @relation.fill1, fulldoc_id: @relation.fulldoc_id, givej: @relation.givej, hnmr_id: @relation.hnmr_id, hz: @relation.hz, multiplet: @relation.multiplet, nmrdetailh_id: @relation.nmrdetailh_id, oka: @relation.oka, okb: @relation.okb, singlepart_id: @relation.singlepart_id }
    assert_redirected_to relation_path(assigns(:relation))
  end

  test "should destroy relation" do
    assert_difference('Relation.count', -1) do
      delete :destroy, id: @relation
    end

    assert_redirected_to relations_path
  end
end
