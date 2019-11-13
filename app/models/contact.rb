class Contact < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  has_and_belongs_to_many :groups
end
