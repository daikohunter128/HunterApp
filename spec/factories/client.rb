FactoryGirl.define do
  factory :client do
    sequence(:email) { |n| "member#{n}@example.com" }
    company_name 'abc代行'
    company_name_kana 'エービーシーダイコウ'
    representative '山田太郎'
    representative_kana 'ヤマダタロウ'
    password 'pw'
    suspended false
    start_date Date.today
  end
end