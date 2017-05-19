class ChangeCniDelivranceOnTalentIdentificationIformation < ActiveRecord::Migration
  def change
  	change_column :talent_identification_informations, :cni_delivrance, :date
  end
end
