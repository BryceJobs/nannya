class JobProposition < ActiveRecord::Base
	
	validates :nom, :telephone, :title, :description, :ville, :quartier, :duree_contrat, :salaire, :principale_taches,
			  presence: true

	def self.ville
		%w(Douala Yaounde)
	end

	def self.salary
		%w(40000-60000 60000-80000 80000-100000 100000+)
	end

	def self.type
		%w(Menagere Nounou Mix)
	end

	def self.jour
		%w(Lundi-Vendredi Lundi-Samedi Lundi-Dimanche Autres )
	end

	
end
