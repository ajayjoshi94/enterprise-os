class OrganizationMember < ApplicationRecord
  belongs_to :organization
  belongs_to :user

  validates :role, presence: true
end
