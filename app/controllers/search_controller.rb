class SearchController < ApplicationController
  def index
    teachers = Teacher.order(:id)
    subjects = Subject.order(:id)
    students = Student.order(:id)

    query = params[:q]

    unless query.blank?
      query = "%#{query}%"
      teachers = teachers.where('name ILIKE ?', [query])
      subjects = subjects.where('name ILIKE ?', [query])
      students = students.where('name ILIKE ?', [query])
    end

    teachers = paginate teachers
    subjects = paginate subjects
    students = paginate students

    render json: {teachers: teachers, subjects: subjects, students: students}
  end
end
