require 'test_helper'

class ItemDefinitionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @item_definition = item_definitions(:one)
  end

  test "should get index" do
    get item_definitions_url
    assert_response :success
  end

  test "should get new" do
    get new_item_definition_url
    assert_response :success
  end

  test "should create item_definition" do
    assert_difference('ItemDefinition.count') do
      post item_definitions_url, params: { item_definition: { data_parent: @item_definition.data_parent, data_type: @item_definition.data_type, description: @item_definition.description, name: @item_definition.name } }
    end

    assert_redirected_to item_definition_url(ItemDefinition.last)
  end

  test "should show item_definition" do
    get item_definition_url(@item_definition)
    assert_response :success
  end

  test "should get edit" do
    get edit_item_definition_url(@item_definition)
    assert_response :success
  end

  test "should update item_definition" do
    patch item_definition_url(@item_definition), params: { item_definition: { data_parent: @item_definition.data_parent, data_type: @item_definition.data_type, description: @item_definition.description, name: @item_definition.name } }
    assert_redirected_to item_definition_url(@item_definition)
  end

  test "should destroy item_definition" do
    assert_difference('ItemDefinition.count', -1) do
      delete item_definition_url(@item_definition)
    end

    assert_redirected_to item_definitions_url
  end
end
