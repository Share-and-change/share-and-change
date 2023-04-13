require "application_system_test_case"

class KitsTest < ApplicationSystemTestCase
  setup do
    @kit = kits(:one)
  end

  test "visiting the index" do
    visit kits_url
    assert_selector "h1", text: "Kits"
  end

  test "should create kit" do
    visit kits_url
    click_on "New kit"

    fill_in "Category", with: @kit.category_id
    fill_in "Description", with: @kit.description
    fill_in "Image", with: @kit.image
    fill_in "Name", with: @kit.name
    click_on "Create Kit"

    assert_text "Kit was successfully created"
    click_on "Back"
  end

  test "should update Kit" do
    visit kit_url(@kit)
    click_on "Edit this kit", match: :first

    fill_in "Category", with: @kit.category_id
    fill_in "Description", with: @kit.description
    fill_in "Image", with: @kit.image
    fill_in "Name", with: @kit.name
    click_on "Update Kit"

    assert_text "Kit was successfully updated"
    click_on "Back"
  end

  test "should destroy Kit" do
    visit kit_url(@kit)
    click_on "Destroy this kit", match: :first

    assert_text "Kit was successfully destroyed"
  end
end
