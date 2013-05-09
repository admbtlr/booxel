class Job

  def send_mobi_to_kindle(order)
    mobi_file = order.get_watermarked_mobi_file
    OrderFulfiller.send_to_kindle(order, mobi_file).deliver()
  end
  handle_asynchronously :send_mobi_to_kindle

end