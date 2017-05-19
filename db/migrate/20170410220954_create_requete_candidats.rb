class CreateRequeteCandidats < ActiveRecord::Migration
  def change
    create_table :requete_candidats do |t|
      t.string :nom
      t.string :prenom
      t.string :ville
      t.string :quartier
      t.string :telephone
      t.string :email
      t.boolean :experience

      t.timestamps null: false
    end
  end
end
