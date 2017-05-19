class AddTacheToJobProposition < ActiveRecord::Migration
  def change
    add_column :job_propositions, :principale_taches, :text
  end
end
