class SchoolClassesController < ApplicationController
    before_action :find_school_class, only: [:show, :edit]

    def new
        @school_class = SchoolClass.new
    end

    def create
        @school_class = SchoolClass.create(school_classes_params(:title, :room_number))
        redirect_to school_class_path(@school_class)
    end

    def show
    end

    def edit

    end

    def update
        @school_class = SchoolClass.update(school_classes_params(:title, :room_number))
        redirect_to school_class_path(@school_class)
    end

    private

    def find_school_class
        @school_class = SchoolClass.find(params[:id])
    end

    def school_classes_params(*args)
        params.require(:school_class).permit(*args)
    end

end