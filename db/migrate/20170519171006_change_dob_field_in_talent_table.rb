class ChangeDobFieldInTalentTable < ActiveRecord::Migration
  def change
  
  	 remove_column :talents, :dob, :date
  	 add_column :talents, :date_naissance, :date
  end
end
