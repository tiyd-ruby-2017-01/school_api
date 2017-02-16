class Teacher < ApplicationRecord
  validates :name, presence: true
  validates :subjects, length: { minimum: 1 }
  # validates_associated :subjects
  has_and_belongs_to_many :subjects
  has_many :students, through: :subjects
end
