class RequeteCandidat < ActiveRecord::Base

	validates :nom, :telephone, :prenom, :ville, :quartier, 
			  presence: true
end
