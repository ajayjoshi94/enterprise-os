FactoryBot.define do
  factory :organization_member do
    association :organization
    association :user

    role { "owner" }
  end
end