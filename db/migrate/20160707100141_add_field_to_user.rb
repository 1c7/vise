class AddFieldToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :location, :string
    add_column :users, :url, :string
    add_column :users, :school, :string
    add_column :users, :bio, :string
  end
end
