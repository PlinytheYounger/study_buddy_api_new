class AddColumnToConcept < ActiveRecord::Migration[6.0]
  def change
    add_column :concepts, :comprehension, :integer
  end
end
