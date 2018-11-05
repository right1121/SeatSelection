class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string, null: false
    add_column :users, :sex, :string
    add_column :users, :age, :string, limit: 3
  end
end
