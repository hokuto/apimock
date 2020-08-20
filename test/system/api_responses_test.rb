require "application_system_test_case"

class ApiResponsesTest < ApplicationSystemTestCase
  setup do
    @api_response = api_responses(:one)
  end

  test "visiting the index" do
    visit api_responses_url
    assert_selector "h1", text: "Api Responses"
  end

  test "creating a Api response" do
    visit api_responses_url
    click_on "New Api Response"

    fill_in "Json", with: @api_response.json
    click_on "Create Api response"

    assert_text "Api response was successfully created"
    click_on "Back"
  end

  test "updating a Api response" do
    visit api_responses_url
    click_on "Edit", match: :first

    fill_in "Json", with: @api_response.json
    click_on "Update Api response"

    assert_text "Api response was successfully updated"
    click_on "Back"
  end

  test "destroying a Api response" do
    visit api_responses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Api response was successfully destroyed"
  end
end
