class AddOverallToJirous < ActiveRecord::Migration[6.1]
  def change
    add_column :jirous, :overall, :integer
  end
end
