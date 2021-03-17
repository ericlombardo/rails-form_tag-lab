class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create  # redirect back to new view with params showing
    @params = params
    render :new
  end

end
