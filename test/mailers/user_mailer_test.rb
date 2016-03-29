require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "send_school_invitation" do
    mail = UserMailer.send_school_invitation
    assert_equal "Send school invitation", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
