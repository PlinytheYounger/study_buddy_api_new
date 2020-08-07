class CreateInterviews < ActiveRecord::Migration[6.0]
  def change
    create_table :interviews do |t|
      t.string :interview_type
      t.string :company_name
      t.date :interview_date

      t.timestamps
    end
  end
end
