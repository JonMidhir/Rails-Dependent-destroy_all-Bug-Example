class Book < ActiveRecord::Base
  has_many :pages, :foreign_key => 'book_bid', :primary_key => 'bid', :dependent => :delete_all
  
  before_create :generate_bid
  
  private
  
  def generate_bid
    self.class.count + 10
  end
end
