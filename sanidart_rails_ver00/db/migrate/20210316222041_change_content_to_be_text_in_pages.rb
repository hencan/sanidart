class ChangeContentToBeTextInPages < ActiveRecord::Migration[6.1]
  def change
    change_column :pages, :content, :text
  end
end
