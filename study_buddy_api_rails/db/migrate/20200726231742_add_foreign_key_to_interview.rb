class AddForeignKeyToInterview < ActiveRecord::Migration[6.0]
  def change
    add_column :interviews, :user_id, :integer
  end
end
