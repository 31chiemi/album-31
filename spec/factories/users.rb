FactoryBot.define do
  factory :user do
    name                    {'山田太郎'}
    email                   {Faker::Internet.free_email}
    password                {'test9999'}
    password_confirmation   {password}
  end
end