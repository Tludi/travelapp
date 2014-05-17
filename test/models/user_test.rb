require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = users(:one)
  end

  test "user should have a name" do
    assert_not_nil :username
  end

  test "user should have a password" do
    assert_not_nil :password
  end

  test "user name should be Tim" do
    assert_equal @user.username, "Tim", "The name should be Tim for user"
  end

  test "user responds to account" do
    user = User.create!(username: "Milo", password: "password", password_confirmation: "password")
    # user.account.create!(name: user.username)
    assert user.respond_to?(:account), "User should have 1 account"
  end

  test "user account default is username account" do
    # user = User.create!(username: "Milo", password: "password", password_confirmation: "password")
    @user.create_account(name: "#{@user.username}'s account")
    assert_equal @user.account.name, "Tim's account"
  end


end
