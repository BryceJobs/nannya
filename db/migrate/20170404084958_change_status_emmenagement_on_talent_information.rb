class ChangeStatusEmmenagementOnTalentInformation < ActiveRecord::Migration
  def change
  	change_column :talent_informations, :status_emmenagement, :boolean
  end
end
