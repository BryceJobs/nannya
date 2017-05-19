class CreateTalentIdentificationInformations < ActiveRecord::Migration
  def change
    create_table :talent_identification_informations do |t|
      t.string :cni_numero
      t.string :cni_delivrance
      t.string :cni_place
      t.string :cni_scan
      t.string :contact_nom
      t.string :contact_adresse
      t.string :contact_phone

      t.timestamps null: false
    end
  end
end
