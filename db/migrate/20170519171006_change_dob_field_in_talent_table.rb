class ChangeDobFieldInTalentTable < ActiveRecord::Migration
  def change
  
  	 remove_column :talents, :dob
  	 add_column :talents, :date_naissance, :date
  end
end
