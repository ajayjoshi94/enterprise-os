class AddOrganizationToUsers < ActiveRecord::Migration[7.2]
  def change
    add_reference :users,
                  :organization,
                  type: :uuid,
                  foreign_key: true
  end
end
