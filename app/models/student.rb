class Student < ApplicationRecord
  validates :name, presence: true
  validates_associated :subjects
  has_and_belongs_to_many :subjects
  has_many :teachers, through: :subjects
end
