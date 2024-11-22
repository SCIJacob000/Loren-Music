class CreateMusicians < ActiveRecord::Migration[7.1]
  def change
    create_table :musicians do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :password
      t.string :instruments
      t.string :local_area

      t.timestamps
    end
  end
end
