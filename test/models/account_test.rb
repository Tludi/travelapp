require 'test_helper'

class AccountTest < ActiveSupport::TestCase
  def setup
    @account = account(:first)
  end

  test "account has a user id" do
    assert_not_nil @account.user_id
  end

end