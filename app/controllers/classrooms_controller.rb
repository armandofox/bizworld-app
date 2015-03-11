class ClassroomsController < ApplicationController

	def new
		@teacher = session[:teacher]
	end

	def create
		@teacher = session[:teacher]
		@teacher.classrooms.create(params[:classroom])
		redirect_to teacher_path(@teacher)
	end

  def show
    id = params[:id]
    @classroom = Classroom.find(id)
  end

end