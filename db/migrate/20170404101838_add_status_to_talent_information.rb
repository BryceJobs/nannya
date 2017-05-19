class AddStatusToTalentInformation < ActiveRecord::Migration
  def change
    add_column :talent_informations, :Status_emplois, :boolean
  end
end
