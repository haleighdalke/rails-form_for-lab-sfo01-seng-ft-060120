class StudentsController < ApplicationController
    def index
        @students = Student.all
    end

    def new
    end

    def create
        @student = Student.create(params.require(:student).permit(:first_name, :last_name))
        redirect_to student_path(@student.id)
    end

    def show
        # byebug
        @student = Student.find(params[:id])
    end

    def edit
        @student = Student.find(params[:id])
    end

    def update
        @student = Student.find(params[:id])
        @student.update(params.require(:student).permit(:first_name, :last_name))
        redirect_to student_path(@student.id)
    end
end
