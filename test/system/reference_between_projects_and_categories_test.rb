require "application_system_test_case"

class ReferenceBetweenProjectsAndCategoriesTest < ApplicationSystemTestCase
  setup do
    @reference_between_projects_and_category = reference_between_projects_and_categories(:one)
  end

  test "visiting the index" do
    visit reference_between_projects_and_categories_url
    assert_selector "h1", text: "Reference Between Projects And Categories"
  end

  test "creating a Reference between projects and category" do
    visit reference_between_projects_and_categories_url
    click_on "New Reference Between Projects And Category"

    click_on "Create Reference between projects and category"

    assert_text "Reference between projects and category was successfully created"
    click_on "Back"
  end

  test "updating a Reference between projects and category" do
    visit reference_between_projects_and_categories_url
    click_on "Edit", match: :first

    click_on "Update Reference between projects and category"

    assert_text "Reference between projects and category was successfully updated"
    click_on "Back"
  end

  test "destroying a Reference between projects and category" do
    visit reference_between_projects_and_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reference between projects and category was successfully destroyed"
  end
end
