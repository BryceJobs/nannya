class CreateRequeteGenerales < ActiveRecord::Migration
  def change
    create_table :requete_generales do |t|
      t.string :nom
      t.string :telephone
      t.string :email
      t.string :sujet
      t.string :message

      t.timestamps null: false
    end
  end
end
