class CreateRamen < ActiveRecord::Migration[6.1]
  def change
    create_table :ramen do |t|
      t.string :shop
      t.string :genre
      t.string :address
      t.text :about

      t.timestamps
    end
  end
end
