FactoryBot.define do
  factory :user do
    username { "Regular Doe" }
    email { "doe@reactive_rails.io" }
    password { "123456" }
  end
  factory :post do
    user { user }
    body { "Test Doe blog post" }
  end
end
