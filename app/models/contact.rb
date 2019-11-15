class Contact < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  has_and_belongs_to_many :groups

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.search(search_phrase)
    where("first_name LIKE :search_phrase OR last_name LIKE :search_phrase OR email LIKE :search_phrase OR phone_number LIKE :search_phrase", :search_phrase => "%#{search_phrase}%")
  end

end
