class Location < ApplicationRecord
  belongs_to :user
  has_many :employees
  has_many :workers
end
