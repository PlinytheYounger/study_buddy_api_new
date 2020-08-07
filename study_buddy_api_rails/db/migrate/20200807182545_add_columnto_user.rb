class AddColumntoUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :calendar, :string
  end
end
