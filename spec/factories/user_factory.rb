FactoryBot.define do
  sequence(:email) { |n| "user#{n}@example.com" }
  factory :user do
    email
    password "password"
    first_name "Jane"
    last_name "Doe"
    admin false
  end

  factory :admin, class: User do
    email
    password "password"
    first_name "Jane"
    last_name "Admin"
    admin true
  end
end
