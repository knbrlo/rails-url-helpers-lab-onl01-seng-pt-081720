class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
  end

  def activate
    change_student_status
    redirect_to :action => "show"
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end

  def change_student_status
    @student = Student.find(params[:id])
    @student.active = !@student.active
    @student.save
  end

end