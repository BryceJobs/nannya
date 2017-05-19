class AddTalentToTalentIdentificationInformation < ActiveRecord::Migration
  def change
    add_reference :talent_identification_informations, :talent, index: true, foreign_key: true
  end
end
