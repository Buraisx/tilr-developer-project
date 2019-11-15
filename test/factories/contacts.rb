FactoryBot.define do
  factory :contact do
    sequence(:id){|i| i}
    first_name 'john'
    last_name 'doe'
    email 'test@test.com'
    phone_number '416-123-1234'
  end
end
