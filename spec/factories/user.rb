FactoryBot.define do
  factory :user do
    display_name { Faker::Name.first_name }
    email { "#{Faker::Name.first_name}@#{Faker::Name.first_name}.com" }
  end
end
