class CreatePracticeProblems < ActiveRecord::Migration[6.0]
  def change
    create_table :practice_problems do |t|
      t.string :name
      t.string :description
      t.string :solution
      t.string :difficulty
      t.string :url

      t.timestamps
    end
  end
end
