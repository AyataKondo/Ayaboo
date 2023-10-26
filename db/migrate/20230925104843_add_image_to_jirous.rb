class AddImageToJirous < ActiveRecord::Migration[6.1]
  def change
    add_column :jirous, :image, :string
  end
end
