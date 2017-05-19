class CreateTalents < ActiveRecord::Migration
  def change
    create_table :talents do |t|
      t.string :nom
      t.string :prenom
      t.string :dob
      t.string :telephone
      t.string :email
      t.string :adresse
      t.string :ville
      t.string :quartier
      t.string :image
      t.string :disponibilite

      t.timestamps null: false
    end
  end
end
