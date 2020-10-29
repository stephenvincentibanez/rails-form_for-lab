class StudentsController < ApplicationController
    before_action :find_school_class, only: [:show, :edit]

    def new
        @student = Student.new
    end

    def create
        @student = Student.create(student_params(:first_name, :last_name))
        redirect_to student_path(@student)
    end

    def show
    end

    def edit
    end

    def update
        @student = Student.update(student_params(:first_name, :last_name))
        redirect_to student_path(@student)
    end

    private

    def find_school_class
        @student = Student.find(params[:id])
    end

    def student_params(*args)
        params.require(:student).permit(*args)
    end
end
