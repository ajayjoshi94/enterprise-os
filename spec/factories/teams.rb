FactoryBot.define do
  factory :team do
    association :organization

    name { "Engineering" }
    description { "Engineering Team" }
  end
end