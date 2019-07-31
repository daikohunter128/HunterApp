FactoryGirl.define do
  factory :administrator do
    sequence(:email) { |n| "admin#{n}@example.com" }
    password 'pw'
    suspended false
    start_date Date.today
  end
end