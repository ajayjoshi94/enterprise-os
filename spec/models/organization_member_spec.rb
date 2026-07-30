require "rails_helper"

RSpec.describe OrganizationMember, type: :model do
  it "is valid with valid attributes" do
    organization = create(:organization)
    user = create(:user, organization: organization)

    member = described_class.new(
      organization: organization,
      user: user,
      role: "owner"
    )

    expect(member).to be_valid
  end
end