class CreateJobPropositions < ActiveRecord::Migration
  def change
    create_table :job_propositions do |t|
      t.string :title
      t.text :description
      t.string :ville
      t.string :quartier
      t.string :duree_contrat
      t.boolean :status_emmenagement
      t.integer :salaire
      t.string :disponibilite
      t.string :jour_travail
      t.string :heure_travail_debut
      t.string :heure_travail_fin

      t.timestamps null: false
    end
  end
end
