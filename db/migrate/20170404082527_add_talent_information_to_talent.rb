class AddTalentInformationToTalent < ActiveRecord::Migration
  def change
    add_reference :talents, :talent_information, index: true, foreign_key: true
  end
end
