class Job

  def send_mobi_to_kindle(order)
    if order.sent_to_kindle_at.nil?
      mobi_path = order.get_watermarked_mobi_path
      mobi_file = nil
      open(mobi_path) {|f|
        mobi_file = f.read
      }
      OrderFulfiller.send_to_kindle(order, mobi_file).deliver()
      order.sent_to_kindle_at = Time.now.to_i
      order.save
      # File.unlink(mobi_file.path)
    end
  end
  handle_asynchronously :send_mobi_to_kindle

end