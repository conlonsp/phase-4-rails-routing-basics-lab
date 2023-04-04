class StudentsController < ApplicationController
  def index
    render json: Student.all
  end

  def grades
    by_grade = Student.all.sort_by {|s| s.grade}.reverse
    render json: by_grade
  end

  def highest_grade
    highest_grade = Student.all.sort_by {|s| s.grade}.reverse.first
    render json: highest_grade
  end
end
