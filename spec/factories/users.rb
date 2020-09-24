FactoryBot.define do
  factory :user do
    nickname              {"あああ"}
    email                 {"aaa@aaa"}
    password              {"ty0721"}
    password_confirmation {password}
  end
end