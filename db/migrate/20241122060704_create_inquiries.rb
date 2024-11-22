class CreateInquiries < ActiveRecord::Migration[7.1]
  def change
    create_table :inquiries do |t|
      t.string :host_first_name
      t.string :host_last_name
      t.string :host_email
      t.string :host_phone_number
      t.string :event_name
      t.string :event_location
      t.date :event_date
      t.time :start_time
      t.integer :duration
      t.references :musician, null: false, foreign_key: true

      t.timestamps
    end
  end
end
