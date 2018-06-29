class ClassroomsController < ApplicationController

    before_action :set_course
    before_action :set_course_classroom, only: [:show, :update, :destroy]

  

    # GET /teachers/:teacher_id/courses/:course_id/classrooms
    def index
        json_response(@course.classrooms)
    end


    
    # GET /teachers/:teacher_id/courses/:course_id/classrooms/:classroom_id
    def show
        json_response(@classroom)
    end

    # POST /teachers/:teacher_id/courses/:course_id/classrooms
    def create
        @variablex=@course.classrooms.create!(classroom_params)
        json_response(@variablex, :created)
    end

    # PUT /teachers/:teacher_id/courses/:course_id/classrooms/:classroom_id
    def update
        @classroom.update(classroom_params)
        head :no_content
    end

    # DELETE /teachers/:teacher_id/courses/:course_id/classrooms/:classroom_id
    def destroy
        @classroom.destroy
        head :no_content
    end

    private

    def classroom_params
        params.permit(:area, :tema, :cupos, :direccion)
    end

    def set_course
        @course = Course.find(params[:course_id])
    end

    def set_course_classroom
        @classroom = @course.classrooms.find_by!(id: params[:id]) if @course
    end
end
