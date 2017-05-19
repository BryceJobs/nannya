class CreateTalentInformations < ActiveRecord::Migration
  def change
    create_table :talent_informations do |t|
      t.text :presentation
      t.string :type_emplois
      t.string :status_emmenagement
      t.integer :salaire_min
      t.boolean :experience
      t.boolean :status_matrimonial
      t.integer :nombre_enfants
      t.string :niveau_scolaire

      t.timestamps null: false
    end
  end
end
