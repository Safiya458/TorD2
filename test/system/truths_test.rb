require "application_system_test_case"

class TruthsTest < ApplicationSystemTestCase
  setup do
    @truth = truths(:one)
  end

  test "visiting the index" do
    visit truths_url
    assert_selector "h1", text: "Truths"
  end

  test "should create truth" do
    visit truths_url
    click_on "New truth"

    fill_in "Text", with: @truth.text
    click_on "Create Truth"

    assert_text "Truth was successfully created"
    click_on "Back"
  end

  test "should update Truth" do
    visit truth_url(@truth)
    click_on "Edit this truth", match: :first

    fill_in "Text", with: @truth.text
    click_on "Update Truth"

    assert_text "Truth was successfully updated"
    click_on "Back"
  end

  test "should destroy Truth" do
    visit truth_url(@truth)
    click_on "Destroy this truth", match: :first

    assert_text "Truth was successfully destroyed"
  end
end
