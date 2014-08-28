require 'test_helper'

class FulldocsControllerTest < ActionController::TestCase
  setup do
    @fulldoc = fulldocs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fulldocs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fulldoc" do
    assert_difference('Fulldoc.count') do
      post :create, fulldoc: { chemist: @fulldoc.chemist, fill1: @fulldoc.fill1, fill2: @fulldoc.fill2, fill3: @fulldoc.fill3, format: @fulldoc.format, fulltext: @fulldoc.fulltext, name: @fulldoc.name, oka: @fulldoc.oka, okb: @fulldoc.okb, okc: @fulldoc.okc, okd: @fulldoc.okd, source: @fulldoc.source, sumexp: @fulldoc.sumexp }
    end

    assert_redirected_to fulldoc_path(assigns(:fulldoc))
  end

  test "should show fulldoc" do
    get :show, id: @fulldoc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fulldoc
    assert_response :success
  end

  test "should update fulldoc" do
    patch :update, id: @fulldoc, fulldoc: { chemist: @fulldoc.chemist, fill1: @fulldoc.fill1, fill2: @fulldoc.fill2, fill3: @fulldoc.fill3, format: @fulldoc.format, fulltext: @fulldoc.fulltext, name: @fulldoc.name, oka: @fulldoc.oka, okb: @fulldoc.okb, okc: @fulldoc.okc, okd: @fulldoc.okd, source: @fulldoc.source, sumexp: @fulldoc.sumexp }
    assert_redirected_to fulldoc_path(assigns(:fulldoc))
  end

  test "should destroy fulldoc" do
    assert_difference('Fulldoc.count', -1) do
      delete :destroy, id: @fulldoc
    end

    assert_redirected_to fulldocs_path
  end
end
