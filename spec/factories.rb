FactoryBot.define do
    factory :inquiry do
      host_first_name { Faker::Name.first_name }
      host_last_name { Faker::Name.last_name }
      host_email { Faker::Internet.email }
      host_phone_number { Faker::PhoneNumber.phone_number } 
      event_name { Faker::Company.catch_phrase }
      event_location { Faker::Address.full_address }
      event_date { Faker::Date.forward(days: 365) }
      start_time { Time.current.beginning_of_day + rand(6..21).hours }  
      duration { rand(1..5) }  
      musician_id { create(:musician).id }   
    end
  end