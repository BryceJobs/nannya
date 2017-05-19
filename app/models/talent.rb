class Talent < ActiveRecord::Base
	belongs_to :talent_information
	belongs_to :talent_identification_information
	mount_uploader :image, AvatarUploader
end
