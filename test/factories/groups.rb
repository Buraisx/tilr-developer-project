FactoryBot.define do
  factory :group do
    sequence(:id){|i| i}
    name 'test group'
  end
end
