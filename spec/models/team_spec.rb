require "rails_helper"

RSpec.describe Team, type: :model do
  it "is valid with valid attributes" do
    expect(build(:team)).to be_valid
  end
end