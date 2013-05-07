class StoreController < ApplicationController
  skip_before_action :authorize
  def index
    @books = Book.order('publication_date DESC')
  end
end
