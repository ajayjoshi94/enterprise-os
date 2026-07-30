require "rails_helper"

RSpec.describe Organization, type: :model do
  it "is valid with valid attributes" do
    organization = build(:organization)

    expect(organization).to be_valid
  end
end