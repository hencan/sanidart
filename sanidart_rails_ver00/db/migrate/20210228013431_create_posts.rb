class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :subtitle
      t.string :category
      t.boolean :visible

      t.timestamps
    end
  end
end
