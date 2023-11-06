require "test_helper"

class BranchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @school = schools(:one)
    @branch = branches(:one)
  end

  test "should get index" do
    get school_branches_url(@school)
    assert_response :success
  end

  test "should get new" do
    get new_school_branch_url(@school)
    assert_response :success
  end

  test "should create branch" do
    assert_difference("Branch.count") do
      post school_branches_url(@school),
           params: {
             branch: {
               name: @branch.name,
               school_id: @branch.school_id,
             },
           }
    end

    assert_redirected_to school_branch_url(@school, Branch.last)
  end

  test "should show branch" do
    get school_branch_url(@school, @branch)
    assert_response :success
  end

  test "should get edit" do
    get edit_school_branch_url(@school, @branch)
    assert_response :success
  end

  test "should update branch" do
    patch school_branch_url(@school, @branch),
          params: {
            branch: {
              name: @branch.name,
              school_id: @branch.school_id,
            },
          }
    assert_redirected_to school_branch_url(@school, @branch)
  end

  test "should destroy branch" do
    assert_difference("Branch.count", -1) do
      delete school_branch_url(@school, @branch)
    end

    assert_redirected_to school_branches_url(@school)
  end
end
