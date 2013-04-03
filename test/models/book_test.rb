require 'test_helper'

class BookTest < ActiveSupport::TestCase

  fixtures :books

  test "book attributes must not be empty" do
    book = Book.new
    assert book.invalid?
    assert book.errors[:title].any?
    assert book.errors[:author].any?
    assert book.errors[:teaser].any?
    assert book.errors[:description].any?
    assert book.errors[:price].any?
    assert book.errors[:image_url].any?
  end

  test "book teaser should be at least 10 letters" do
    book = Book.new(title:      'Title',
                    author:     'Author Name',
                    teaser:     'x',
                    description:'Blah blah blah',
                    image_url:  'xxx.jpg')
    assert book.invalid?
    assert book.errors[:teaser].any?
  end

  test "book price must be positive" do
    book = Book.new(title:      'Book Title',
                    author:     'Author Name',
                    teaser:'Blah blah blah',
                    description:'Blah blah blah',
                    image_url:  'xxx.jpg')
    
    book.price = -1
    assert book.invalid?
    assert_equal ["must be greater than or equal to 0.01"],
      book.errors[:price]

    book.price = 0
    assert book.invalid?
    assert_equal ["must be greater than or equal to 0.01"],
      book.errors[:price]

    book.price = 1
    assert book.valid?
  end

  def new_book(image_url)
    Book.new(title:         'Book Title',
             author:        'Author Nsme',
             price:         1,
             teaser:        'Blah blah blah',
             description:   'Blah blah blah',
             image_url:     image_url)
  end

  test "image url" do
    ok = %w{ x.gif x.jpg x.png X.PNG X.Png http://a.b.c/x/y/z.PnG }
    bad = %W{ x.doc x.pdf x.gif/more }

    ok.each do |name|
      assert new_book(name).valid?, "#{name} shouldn't be invalid"
    end

    bad.each do |name|
      assert new_book(name).invalid?, "#{name} shouldn't be valid"
    end

  end

  test "book is not valid without a unique title" do
    book = Book.new(title:      books(:one).title,
                    author:     'xxx',
                    description:'blah blah blah',
                    teaser:     'blah blah blah',
                    price:      1,
                    image_url:  'x.png')

    assert book.invalid?
    assert_equal ["has already been taken"], book.errors[:title]

  end

end
