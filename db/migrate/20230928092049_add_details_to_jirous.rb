class AddDetailsToJirous < ActiveRecord::Migration[6.1]
  def change
    add_column :jirous, :lat, :float
    add_column :jirous, :lng, :float
  end
end
