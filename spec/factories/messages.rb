FactoryBot.define do
  factory :message do 
    text {"aaa"}
    association :user
    association :indoor
  end
end
