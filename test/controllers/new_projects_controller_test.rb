require 'test_helper'

class NewProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @new_project = new_projects(:one)
  end

  test "should get index" do
    get new_projects_url
    assert_response :success
  end

  test "should get new" do
    get new_new_project_url
    assert_response :success
  end

  test "should create new_project" do
    assert_difference('NewProject.count') do
      post new_projects_url, params: { new_project: { date: @new_project.date, description: @new_project.description, img_url: @new_project.img_url, title: @new_project.title } }
    end

    assert_redirected_to new_project_url(NewProject.last)
  end

  test "should show new_project" do
    get new_project_url(@new_project)
    assert_response :success
  end

  test "should get edit" do
    get edit_new_project_url(@new_project)
    assert_response :success
  end

  test "should update new_project" do
    patch new_project_url(@new_project), params: { new_project: { date: @new_project.date, description: @new_project.description, img_url: @new_project.img_url, title: @new_project.title } }
    assert_redirected_to new_project_url(@new_project)
  end

  test "should destroy new_project" do
    assert_difference('NewProject.count', -1) do
      delete new_project_url(@new_project)
    end

    assert_redirected_to new_projects_url
  end
end
