class RequeteGenerale < ActiveRecord::Base
	validates :nom, :telephone, :email, :message, 
			  presence: true
end
