class AddForeignKeyToRelationship < ActiveRecord::Migration[6.0]
  def change
    add_column :relationships, :user_one_id, :integer
    add_column :relationships, :user_two_id, :integer
  end
end
