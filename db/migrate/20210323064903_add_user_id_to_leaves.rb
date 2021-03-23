class AddUserIdToLeaves < ActiveRecord::Migration[6.1]
  def change
    add_column :leaves, :user_id, :integer
  end
end
