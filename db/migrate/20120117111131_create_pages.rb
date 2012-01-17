class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.integer       :book_bid
      t.string        :title
      t.timestamps
    end
  end
end
