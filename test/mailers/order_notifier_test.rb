require 'test_helper'

class OrderNotifierTest < ActionMailer::TestCase
  test "received" do
    mail = OrderNotifier.received(orders(:one))
    assert_equal "Depot Conformation Email", mail.subject
    assert_equal ["dave@example.com"], mail.to
    assert_equal ["StricklandB02@gmail.com"], mail.from
    assert_match /Depot Conformation Email/, mail.subject
  end

  test "shipped" do
    mail = OrderNotifier.shipped(orders(:one))
    assert_equal "Depot Conformation Email", mail.subject
    assert_equal ["dave@example.com"], mail.to
    assert_equal ["StricklandB02@gmail.com"], mail.from
    assert_match /Depot Conformation Email/, mail.subject
  end

end
