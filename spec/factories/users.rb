FactoryGirl.define do
  factory :user do
    first_name { Faker::Name.name }
    email 'foo@bar.com'
    password 'foobar'
  end
end
