class AddPublishedToJobProposition < ActiveRecord::Migration
  def change
    add_column :job_propositions, :published, :boolean
  end
end
