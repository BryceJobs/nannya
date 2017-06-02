class ChangeSalaireTypeOnJobProposition < ActiveRecord::Migration
  def change
  	change_column :job_propositions, :salaire, :string
  end
end
