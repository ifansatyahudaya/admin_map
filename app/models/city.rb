class City < ActiveRecord::Base
  has_many :provinces, dependent: :destroy
  accepts_nested_attributes_for :provinces
end