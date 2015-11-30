require 'test_helper'

class EquipmentItemsControllerTest < ActionController::TestCase
  setup do
    @equipment_item = equipment_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:equipment_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create equipment_item" do
    assert_difference('EquipmentItem.count') do
      post :create, equipment_item: {  }
    end

    assert_redirected_to equipment_item_path(assigns(:equipment_item))
  end

  test "should show equipment_item" do
    get :show, id: @equipment_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @equipment_item
    assert_response :success
  end

  test "should update equipment_item" do
    patch :update, id: @equipment_item, equipment_item: {  }
    assert_redirected_to equipment_item_path(assigns(:equipment_item))
  end

  test "should destroy equipment_item" do
    assert_difference('EquipmentItem.count', -1) do
      delete :destroy, id: @equipment_item
    end

    assert_redirected_to equipment_items_path
  end
end
