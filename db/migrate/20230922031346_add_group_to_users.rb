class AddGroupToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :group, :text
  end
end
