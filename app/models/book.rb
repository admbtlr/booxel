class Book < ActiveRecord::Base
  has_many :line_items

  validates :title, :author, :teaser, :description, :image_url, presence: true
  validates :teaser, length: {minimum: 10}
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :title, uniqueness: true
  validates :image_url, allow_blank: true, format: {
    with:       %r{\.(gif|jpg|png)\Z}i,
    message:    'must be a URL for GIF, JPG or PNG'
  }

  before_destroy :ensure_not_referenced_by_any_line_items

  def self.latest
    Book.order('updated_at').last
  end

  private

    # ensure that there are no line items referencing this product
    def ensure_not_referenced_by_any_line_items
      if line_items.empty?
        return true
      else
        errors.add(:base, 'Line Items present')
        return false
      end
    end

end
