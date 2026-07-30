require "rails_helper"

RSpec.describe User, type: :model do
  it "is valid with valid attributes" do
    organization = create(:organization)
    user = build(:user, organization: organization)

    expect(user).to be_valid
  end
end