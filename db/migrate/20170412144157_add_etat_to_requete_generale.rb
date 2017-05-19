class AddEtatToRequeteGenerale < ActiveRecord::Migration
  def change
    add_column :requete_generales, :etat, :boolean, default: false
  end
end
