class TalentIdentificationInformation < ActiveRecord::Base
	has_one :talent
	mount_uploader :cni_scan, CniUploader
end
