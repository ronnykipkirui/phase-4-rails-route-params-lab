

class StudentsController < ApplicationController

  def index
    students = Student.all
    unless params["name"].nil?
      name = params["name"].capitalize()
      students = Student.where("first_name = ? OR last_name = ?","#{name}","#{name}")
      puts "in cond"
    end
    render json: students
  end
  def show
    render json: Student.find(params[:id])
  end

end