FactoryBot.define do
  factory :augury do
    nickname                  {Faker::Name.initials}
    sign                      {"魚座"}
    birth_id                  {'1933-2-4'}
    association :user
  end
end
