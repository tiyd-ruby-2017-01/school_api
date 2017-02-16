class Subject < ApplicationRecord
  validates :name, presence: true
  has_many :students, through: :students_subjects
  has_many :teachers, through: :subjects_teachers
end
