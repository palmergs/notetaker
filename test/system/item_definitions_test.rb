require "application_system_test_case"

class ItemDefinitionsTest < ApplicationSystemTestCase
  setup do
    @item_definition = item_definitions(:one)
  end

  test "visiting the index" do
    visit item_definitions_url
    assert_selector "h1", text: "Item Definitions"
  end

  test "creating a Item definition" do
    visit item_definitions_url
    click_on "New Item Definition"

    fill_in "Data parent", with: @item_definition.data_parent
    fill_in "Data type", with: @item_definition.data_type
    fill_in "Description", with: @item_definition.description
    fill_in "Name", with: @item_definition.name
    click_on "Create Item definition"

    assert_text "Item definition was successfully created"
    click_on "Back"
  end

  test "updating a Item definition" do
    visit item_definitions_url
    click_on "Edit", match: :first

    fill_in "Data parent", with: @item_definition.data_parent
    fill_in "Data type", with: @item_definition.data_type
    fill_in "Description", with: @item_definition.description
    fill_in "Name", with: @item_definition.name
    click_on "Update Item definition"

    assert_text "Item definition was successfully updated"
    click_on "Back"
  end

  test "destroying a Item definition" do
    visit item_definitions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Item definition was successfully destroyed"
  end
end
