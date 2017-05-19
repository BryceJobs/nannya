class ChangeHourDataTypeOnJobProposition < ActiveRecord::Migration
  def change
  	change_column :job_propositions, :heure_travail_debut, :time
  	change_column :job_propositions, :heure_travail_fin, :time
  end
end
