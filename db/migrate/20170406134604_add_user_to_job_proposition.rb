class AddUserToJobProposition < ActiveRecord::Migration
  def change
    add_reference :job_propositions, :user, index: true, foreign_key: true
  end
end
