require 'test_helper'

class DailyMailerTest < ActionMailer::TestCase
  test "notify_user" do
    mail = DailyMailer.notify_user
    assert_equal "Notify user", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
