class City < ActiveRecord::Base
  belongs_to :province
  # accepts_nested_attributes_for :provinces
end