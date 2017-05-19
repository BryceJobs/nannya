class Changedateontalent < ActiveRecord::Migration
  def change
  	change_column :talents, :dob, :date
  end
end
