class AddEtatToRequeteCandidat < ActiveRecord::Migration
  def change
    add_column :requete_candidats, :etat, :boolean, default: false
  end
end
