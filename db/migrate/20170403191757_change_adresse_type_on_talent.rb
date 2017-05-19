class ChangeAdresseTypeOnTalent < ActiveRecord::Migration
  def change
  	change_column :talents, :adresse, :text
  end
end
