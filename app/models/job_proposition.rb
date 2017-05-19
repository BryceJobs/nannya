class JobProposition < ActiveRecord::Base
	
	validates :nom, :telephone, :title, :description, :ville, :quartier, :duree_contrat, :salaire, :principale_taches,
			  presence: true

	def self.ville
		%w(Douala Yaounde)
	end

	def self.salary
		%w(30000-45000 45000-60000 60000-75000 75000+)
	end

	def self.type
		%w(Menagere Nounou Mix)
	end

	def self.jour
		%w(Lundi-Vendredi Lundi-Samedi Lundi-Dimanche Autres )
	end

	
end
