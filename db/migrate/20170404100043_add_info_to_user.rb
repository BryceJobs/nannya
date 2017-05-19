class AddInfoToUser < ActiveRecord::Migration
  def change
    add_column :users, :fullname, :string
    add_column :users, :telephone, :string
    add_column :users, :admin, :boolean
  end
end
