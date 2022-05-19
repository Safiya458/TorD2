require "application_system_test_case"

class DaresTest < ApplicationSystemTestCase
  setup do
    @dare = dares(:one)
  end

  test "visiting the index" do
    visit dares_url
    assert_selector "h1", text: "Dares"
  end

  test "should create dare" do
    visit dares_url
    click_on "New dare"

    fill_in "Text", with: @dare.text
    click_on "Create Dare"

    assert_text "Dare was successfully created"
    click_on "Back"
  end

  test "should update Dare" do
    visit dare_url(@dare)
    click_on "Edit this dare", match: :first

    fill_in "Text", with: @dare.text
    click_on "Update Dare"

    assert_text "Dare was successfully updated"
    click_on "Back"
  end

  test "should destroy Dare" do
    visit dare_url(@dare)
    click_on "Destroy this dare", match: :first

    assert_text "Dare was successfully destroyed"
  end
end
