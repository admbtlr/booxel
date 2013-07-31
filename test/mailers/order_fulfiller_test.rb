require 'test_helper'

class OrderFulfillerTest < ActionMailer::TestCase

  setup do
    @book = FactoryGirl.create(:book, :title => 'This is the Two')
    @order = FactoryGirl.create(:order)
    @customer = @order.customer
  end

  # test "send_to_kindle" do
  #   mail = OrderFulfiller.send_to_kindle
  #   assert_equal "Send to kindle", mail.subject
  #   assert_equal ["to@example.org"], mail.to
  #   assert_equal ["from@example.com"], mail.from
  #   assert_match "Hi", mail.body.encoded
  # end

end
