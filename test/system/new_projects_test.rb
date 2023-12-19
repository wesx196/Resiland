require "application_system_test_case"

class NewProjectsTest < ApplicationSystemTestCase
  setup do
    @new_project = new_projects(:one)
  end

  test "visiting the index" do
    visit new_projects_url
    assert_selector "h1", text: "New Projects"
  end

  test "creating a New project" do
    visit new_projects_url
    click_on "New New Project"

    fill_in "Date", with: @new_project.date
    fill_in "Description", with: @new_project.description
    fill_in "Img url", with: @new_project.img_url
    fill_in "Title", with: @new_project.title
    click_on "Create New project"

    assert_text "New project was successfully created"
    click_on "Back"
  end

  test "updating a New project" do
    visit new_projects_url
    click_on "Edit", match: :first

    fill_in "Date", with: @new_project.date
    fill_in "Description", with: @new_project.description
    fill_in "Img url", with: @new_project.img_url
    fill_in "Title", with: @new_project.title
    click_on "Update New project"

    assert_text "New project was successfully updated"
    click_on "Back"
  end

  test "destroying a New project" do
    visit new_projects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "New project was successfully destroyed"
  end
end
