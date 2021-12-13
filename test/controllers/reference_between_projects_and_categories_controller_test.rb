require "test_helper"

class ReferenceBetweenProjectsAndCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reference_between_projects_and_category = reference_between_projects_and_categories(:one)
  end

  test "should get index" do
    get reference_between_projects_and_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_reference_between_projects_and_category_url
    assert_response :success
  end

  test "should create reference_between_projects_and_category" do
    assert_difference('ReferenceBetweenProjectsAndCategory.count') do
      post reference_between_projects_and_categories_url, params: { reference_between_projects_and_category: {  } }
    end

    assert_redirected_to reference_between_projects_and_category_url(ReferenceBetweenProjectsAndCategory.last)
  end

  test "should show reference_between_projects_and_category" do
    get reference_between_projects_and_category_url(@reference_between_projects_and_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_reference_between_projects_and_category_url(@reference_between_projects_and_category)
    assert_response :success
  end

  test "should update reference_between_projects_and_category" do
    patch reference_between_projects_and_category_url(@reference_between_projects_and_category), params: { reference_between_projects_and_category: {  } }
    assert_redirected_to reference_between_projects_and_category_url(@reference_between_projects_and_category)
  end

  test "should destroy reference_between_projects_and_category" do
    assert_difference('ReferenceBetweenProjectsAndCategory.count', -1) do
      delete reference_between_projects_and_category_url(@reference_between_projects_and_category)
    end

    assert_redirected_to reference_between_projects_and_categories_url
  end
end
