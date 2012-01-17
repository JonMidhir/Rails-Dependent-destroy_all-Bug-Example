class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.integer     :bid
      t.string      :name
      t.timestamps
    end
  end
end
