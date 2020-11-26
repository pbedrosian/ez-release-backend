class CreateReleases < ActiveRecord::Migration[6.0]
  def change
    create_table :releases do |t|
      t.integer :user_id
      t.string :clientFirstName
      t.string :clientLastName
      t.string :clientEmail
      t.string :jobTitle
      t.text :jobDescription
      t.string :dueDate
      t.string :additionalNotes
      t.boolean :signed, default: false
      t.timestamps
    end
  end
end
