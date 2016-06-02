require 'test_helper'

class OrderNotifierTest < ActionMailer::TestCase
  test "received" do
    mail = OrderNotifier.received(orders(:one))
    assert_equal "Depot Conformation Email", mail.subject
    assert_equal ["dave@example.com"], mail.to
    assert_equal ["depot@example.com"], mail.from
  end

  test "shipped" do
    mail = OrderNotifier.shipped(orders(:one))
    assert_equal "Depot Conformation Email", mail.subject
    assert_equal ["dave@example.com"], mail.to
    assert_equal ["depot@example.com"], mail.from

  end

end
