class OrderFulfiller < ActionMailer::Base
  default from: "ab@adam-butler.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_fulfiller.send_to_kindle.subject
  #
  def send_to_kindle(order, mobi_stream)
    attachments[order.book.title+'.mobi'] = mobi_stream
    mail to: order.customer.kindle_email, subject: 'Your order from 1x4x9'
    # mail to: 'ab@adam-butler.com', subject: 'Your order from 1x4x9'
  end
end
