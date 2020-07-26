class AddForeignKeyToPracticeProblem < ActiveRecord::Migration[6.0]
  def change
    add_column :practice_problems, :concept_id, :integer
  end
end
