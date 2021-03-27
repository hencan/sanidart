class AddNameToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :first_name, :string, null: false, default: ""
    add_column :users, :last_name, :string, null: false, default: ""
    add_column :users, :admin, :boolean, default: false
    add_column :users, :cell_phone, :string, null: false, default: ""
  end
end
