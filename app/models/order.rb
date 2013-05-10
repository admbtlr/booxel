class Order < ActiveRecord::Base
  belongs_to :book
  belongs_to :customer

  def get_watermarked_epub_stream
    epub = book.get_epub
    epub.set_title(book.title)
    items = epub.manifest.items
    title = items['title.xhtml']
    content = title.content
    pieces = content.split('</body>')
    content = pieces[0] + '<h3 class="centered">Purchased by<br />'+customer.name+'</h3></body>' + pieces[1]
    title.add_raw_content(content)
    epub.generate_epub_stream.string.bytes.to_a.pack("C*")
  end

  def send_to_kindle
    mobi_file = get_watermarked_mobi_file
    OrderFulfiller.send_to_kindle(@order, mobi_file).deliver()
  end

  def get_watermarked_mobi_file
    epub_file = Tempfile.new([sanitize_filename(book.title), '.epub'], encoding: 'ascii-8bit')
    # epub_path = '/Users/adam/temp/'+sanitize_filename(book.title)+'.epub'
    # epub_file = File.new(epub_path, 'w+', :encoding => 'ascii-8bit')
    mobi_path = get_watermarked_mobi_file_path(epub_file.path)
    begin
      epub_file.write(get_watermarked_epub_stream)
      Kindlegen.run(escape_path epub_file.path)
      open(mobi_path) {|f|
        f.read
      }
    ensure
      epub_file.close
      epub_file.unlink
    end
    
  end

  def get_watermarked_mobi_file_path(epub_file_path)
    epub_file_path.sub('epub', 'mobi')
  end

  def sanitize_filename(filename)
    filename.gsub(/\//, '\/')
  end

  def escape_path(path)
    path.gsub(/ /, '\ ')
  end

end
