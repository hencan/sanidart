class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :name
      t.text :skills
      t.string :whatsapp
      t.string :telegram
      t.string :email
      t.string :facebook
      t.string :instagram
      t.string :linkedin
      t.string :twitter
      t.string :youtube
      t.boolean :main

      t.timestamps
    end
  end
end
