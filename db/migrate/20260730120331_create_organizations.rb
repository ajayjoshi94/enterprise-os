class CreateOrganizations < ActiveRecord::Migration[7.2]
  def change
    create_table :organizations, id: :uuid do |t|
      t.string :name
      t.string :slug

      t.timestamps
    end
    add_index :organizations, :slug, unique: true
  end
end
