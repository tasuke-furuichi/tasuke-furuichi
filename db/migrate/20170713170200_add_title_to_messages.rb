class AddTitleToMessages < ActiveRecord::Migration[5.0]
  def change
    add_column :messages, :title, :sring
  end
end
