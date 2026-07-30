class CreateOrganizationMembers < ActiveRecord::Migration[7.2]
  def change
    create_table :organization_members, id: :uuid do |t|
           t.references :organization,
                   type: :uuid,
                   foreign_key: true

      t.references :user,
                   type: :uuid,
                   foreign_key: true

      t.string :role

      t.timestamps
    end
  end
end
