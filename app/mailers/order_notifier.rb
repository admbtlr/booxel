class OrderNotifier < ActionMailer::Base
  default from: "ab@adam-butler.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifier.received.subject
  #
  def received(order)
    @order = order

    mail to: order.customer.email, subject: 'Your order from Booxel'
  end
end
