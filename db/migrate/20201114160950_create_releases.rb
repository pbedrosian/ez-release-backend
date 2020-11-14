class CreateReleases < ActiveRecord::Migration[6.0]
  def change
    create_table :releases do |t|
      t.string :user_id
      t.string :client_name
      t.string :client_email
      t.string :job_title
      t.text :job_description
      t.string :date_issued
      t.string :date_signed
      t.string :due_date

      t.timestamps
    end
  end
end
