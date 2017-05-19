class AddTalentIdentificationInformationToTalent < ActiveRecord::Migration
  def change
    add_reference :talents, :talent_identification_information, index: true, foreign_key: true
  end
end
