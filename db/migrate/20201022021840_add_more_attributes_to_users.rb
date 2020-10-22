class AddMoreAttributesToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :height, :integer
    add_column :users, :weight, :string
  end
end
