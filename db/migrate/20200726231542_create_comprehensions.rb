class CreateComprehensions < ActiveRecord::Migration[6.0]
  def change
    create_table :comprehensions do |t|
      t.references :user, null: false, foreign_key: true
      t.references :concept, null: false, foreign_key: true
      t.integer :comprehension

      t.timestamps
    end
  end
end
