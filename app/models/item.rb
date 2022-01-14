class Item < ApplicationRecord
	mount_uploader :avatar, AvatarUploader
	
end
