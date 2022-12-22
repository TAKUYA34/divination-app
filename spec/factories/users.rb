FactoryBot.define do
  factory :user do
    name                  {Faker::Name.initials}
    email                 {Faker::Internet.free_email}
    password              {Faker::Internet.password(min_length: 6 )}
    password_confirmation {password}
    birth_id              {'1933-2-4'}
  end 
end
