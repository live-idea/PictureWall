require 'test_helper'

class PuzzleTablesControllerTest < ActionController::TestCase
  setup do
    @puzzle_table = puzzle_tables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:puzzle_tables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create puzzle_table" do
    assert_difference('PuzzleTable.count') do
      post :create, puzzle_table: @puzzle_table.attributes
    end

    assert_redirected_to puzzle_table_path(assigns(:puzzle_table))
  end

  test "should show puzzle_table" do
    get :show, id: @puzzle_table.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @puzzle_table.to_param
    assert_response :success
  end

  test "should update puzzle_table" do
    put :update, id: @puzzle_table.to_param, puzzle_table: @puzzle_table.attributes
    assert_redirected_to puzzle_table_path(assigns(:puzzle_table))
  end

  test "should destroy puzzle_table" do
    assert_difference('PuzzleTable.count', -1) do
      delete :destroy, id: @puzzle_table.to_param
    end

    assert_redirected_to puzzle_tables_path
  end
end
