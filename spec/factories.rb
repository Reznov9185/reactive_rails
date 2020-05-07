FactoryBot.define do
  factory :user do
    username { "Regular Doe" }
    email { "doe@reactive_rails.io" }
    password { "123456" }
  end
  factory :post do
    association :user
    body { "Test Doe blog post" }
  end
end
