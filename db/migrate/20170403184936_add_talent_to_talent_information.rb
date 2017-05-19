class AddTalentToTalentInformation < ActiveRecord::Migration
  def change
    add_reference :talent_informations, :talent, index: true, foreign_key: true
  end
end
