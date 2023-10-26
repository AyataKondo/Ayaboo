class AddUserIdToJirou < ActiveRecord::Migration[6.1]
  def change
    add_column :jirous, :user_id, :integer
  end
end
