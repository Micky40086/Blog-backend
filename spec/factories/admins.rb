FactoryBot.define do
  factory :admin do
    sequence(:email) { |n| "HEHE#{n}@gmail.com" }
    password "password"

    factory :role_admin do
      after(:create) {|admin| admin.add_role(:admin)}
    end
  end

  
end

