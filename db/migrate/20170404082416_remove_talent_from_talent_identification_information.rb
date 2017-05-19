class RemoveTalentFromTalentIdentificationInformation < ActiveRecord::Migration
  def change
    remove_reference :talent_identification_informations, :talent, index: true, foreign_key: true
  end
end
