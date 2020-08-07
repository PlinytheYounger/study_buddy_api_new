class AddColumnToConcepts < ActiveRecord::Migration[6.0]
  def change
    add_column :concepts, :user_id, :integer
  end
end
