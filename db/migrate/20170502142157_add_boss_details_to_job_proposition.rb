class AddBossDetailsToJobProposition < ActiveRecord::Migration
  def change
    add_column :job_propositions, :nom, :string
    add_column :job_propositions, :telephone, :string
    add_column :job_propositions, :email, :string
  end
end
