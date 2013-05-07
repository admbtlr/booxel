class Book < ActiveRecord::Base
  has_many :orders

  validates :title, :image_url, presence: true
  validates :teaser, length: {minimum: 10}
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :title, uniqueness: true
  validates :image_url, allow_blank: true, format: {
    with:       %r{\.(gif|jpg|png)\Z}i,
    message:    'must be a URL for GIF, JPG or PNG'
  }

  before_destroy :ensure_not_referenced_by_any_orders

  def self.latest
    Book.order('updated_at').last
  end

  def get_epub
    path = '/Users/adam/Sites/me/rails/bks/app/assets/ebooks/Ulysses.epub'
    epub = GEPUB::Book.parse(File.new(path))
    epub
  end

  def featured?
    prominence && prominence == 1;
  end

  def blurbs_as_array(length)
    blurb_array = blurbs.split(/\n/).reject! { |c|
      c.strip.empty?
    }
    sorted = blurb_array.sort_by { |blurb| blurb.length }
    if (blurb_array.length <= 3)
      blurb_array
    elsif blurb_array.length == 4
      [ concat_blurbs(sorted[0], sorted[1]), sorted[2], sorted[3] ]
    elsif blurb_array.length == 5
      [ concat_blurbs(sorted[0], sorted[2]), concat_blurbs(sorted[1], sorted[3]), sorted[4] ]
    else
      [ concat_blurbs(sorted[0], sorted[3]), concat_blurbs(sorted[1], sorted[4]), concat_blurbs(sorted[2], sorted[5]) ]
    end
  end

  private

    # ensure that there are no orders referencing this product
    def ensure_not_referenced_by_any_orders
      if orders.empty?
        return true
      else
        errors.add(:base, 'Orders present')
        return false
      end
    end

    def concat_blurbs(blurb1, blurb2)
      blurb1+' '+blurb2
    end
end
