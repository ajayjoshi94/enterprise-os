class Team < ApplicationRecord
  belongs_to :organization

  has_many :organization_members, dependent: :destroy
  has_many :users, through: :organization_members

  validates :name,
            presence: true,
            uniqueness: {
              scope: :organization_id
            }
end
