class Group < ApplicationRecord
  has_and_belongs_to_many :contacts
  accepts_nested_attributes_for :contacts
end
