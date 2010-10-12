require 'test_helper'

class ProjectLineItemsControllerTest < ActionController::TestCase
  setup do
    @project_line_item = project_line_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_line_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_line_item" do
    assert_difference('ProjectLineItem.count') do
      post :create, :project_line_item => @project_line_item.attributes
    end

    assert_redirected_to project_line_item_path(assigns(:project_line_item))
  end

  test "should show project_line_item" do
    get :show, :id => @project_line_item.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @project_line_item.to_param
    assert_response :success
  end

  test "should update project_line_item" do
    put :update, :id => @project_line_item.to_param, :project_line_item => @project_line_item.attributes
    assert_redirected_to project_line_item_path(assigns(:project_line_item))
  end

  test "should destroy project_line_item" do
    assert_difference('ProjectLineItem.count', -1) do
      delete :destroy, :id => @project_line_item.to_param
    end

    assert_redirected_to project_line_items_path
  end
end
