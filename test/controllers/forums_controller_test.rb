require 'test_helper'

class ForumsControllerTest < ActionController::TestCase
  setup do
    @forum = forums(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:forums)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create forum" do
    assert_difference('Forum.count') do
      post :create, forum: { description: @forum.description, forum_type: @forum.forum_type, title: @forum.title, user_id: @forum.user_id }
    end

    assert_redirected_to forum_path(assigns(:forum))
  end

  test "should show forum" do
    get :show, id: @forum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @forum
    assert_response :success
  end

  test "should update forum" do
    patch :update, id: @forum, forum: { description: @forum.description, forum_type: @forum.forum_type, title: @forum.title, user_id: @forum.user_id }
    assert_redirected_to forum_path(assigns(:forum))
  end

  test "should destroy forum" do
    assert_difference('Forum.count', -1) do
      delete :destroy, id: @forum
    end

    assert_redirected_to forums_path
  end
end
