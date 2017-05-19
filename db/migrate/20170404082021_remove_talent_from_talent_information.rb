class RemoveTalentFromTalentInformation < ActiveRecord::Migration
  def change
    remove_reference :talent_informations, :talent, index: true, foreign_key: true
  end
end
