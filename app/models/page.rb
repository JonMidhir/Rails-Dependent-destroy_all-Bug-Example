class Page < ActiveRecord::Base
  belongs_to :book, :foreign_key => "book_bid", :primary_key => "bid"
end
