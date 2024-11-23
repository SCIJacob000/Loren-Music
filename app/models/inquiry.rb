class Inquiry < ApplicationRecord
  belongs_to :musician
  validates :host_first_name, presence: true
  validates :host_last_name, presence: true
  validates :host_email, presence: true
  validates :host_phone_number, presence: true
  validates :event_name, presence: true
  validates :event_date, presence: true
  validates :start_time, presence: true
  validates :event_location, presence: true
  validates :duration, presence: true
  validates :musician_id, presence: true
end
