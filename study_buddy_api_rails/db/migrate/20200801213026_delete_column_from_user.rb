class DeleteColumnFromUser < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :isLoggedIn
  end
end
