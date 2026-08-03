class CreateTeams < ActiveRecord::Migration[7.2]
  def change
    create_table :teams, id: :uuid do |t|
      t.string :name
      t.text :description
      t.references :organization,
                    foreign_key: true,
                    type: :uuid

      t.timestamps
    end
  end
end
