class HomeworksController < ApplicationController
    before_action :set_c_student
    before_action :set_c_student_homework, only: [:show, :update, :destroy]

  

    # GET /teachers/:teacher_id/courses/:course_id/students/:student_id/c_students/:c_student_id/homeworks
    def index
        json_response(@c_student.homeworks)
    end

    # GET /teachers/:teacher_id/courses/:course_id/students/:student_id/c_students/:c_student_id/homeworks/:homework_id
    def show
        json_response(@homework)
    end

    # POST /teachers/:teacher_id/courses/:course_id/students/:student_id/c_students/:c_student_id/homeworks
    def create
        @homework = Homework.create!(nombretarea:homework_params[:nombretarea], fechapublicacion:homework_params[:fechapublicacion], fechaexpiracion:homework_params[:fechaexpiracion], c_student_id:CStudent.find(params[:c_student_id])[:id])    
        json_response(@homework, :created)
    end

    # PUT /teachers/:teacher_id/courses/:course_id/students/:student_id/c_students/:c_student_id/homeworks/:homework_id
    def update
        @homework.update(homework_params)
        head :no_content
    end

    # DELETE /teachers/:teacher_id/courses/:course_id/students/:student_id/c_students/:c_student_id/homeworks/:homework_id
    def destroy
        @homework.destroy
        head :no_content
    end

    private

    def homework_params
        params.permit(:nombretarea, :fechapublicacion, :fechaexpiracion)
    end

    def set_c_student
        @c_student = CStudent.find(params[:c_student_id])
    end

    def set_c_student_homework
        @homework = @c_student.homeworks.find_by!(id: params[:id]) if @c_student
    end


end
