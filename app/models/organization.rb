class Organization < ApplicationRecord
    has_many :organization_members, dependent: :destroy
    has_many :users, through: :organization_members

    validates :name, presence: true
    validates :slug, presence: true, uniqueness: true

end
