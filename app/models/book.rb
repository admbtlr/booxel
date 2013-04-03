class Book < ActiveRecord::Base

  validates :title, :author, :teaser, :description, :image_url, presence: true
  validates :teaser, length: {minimum: 10}
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :title, uniqueness: true
  validates :image_url, allow_blank: true, format: {
    with:       %r{\.(gif|jpg|png)\Z}i,
    message:    'must be a URL for GIF, JPG or PNG'
  }

  def self.latest
    Book.order('updated_at').last
  end

end
