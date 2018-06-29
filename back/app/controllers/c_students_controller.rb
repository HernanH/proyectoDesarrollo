class CStudentsController < ApplicationController
    before_action :set_course
    before_action :set_student
    before_action :set_course_student_c_student, only: [:show, :update, :destroy]

    # GET /teachers/:teacher_id/courses/:course_id/students/:student_id/c_students
    def index
        @c_student = CStudent.where(student_id: Student.find(params[:student_id])[:id])
        json_response(@c_student)
    end

    # GET /teachers/:teacher_id/courses/:course_id/students/:student_id/c_students/:c_student_id
    def show
        json_response(@c_student)
    end

    # POST /teachers/:teacher_id/courses/:course_id/students/:student_id/c_students
    def create
        @c_student=CStudent.create!(asistencia:c_student_params[:asistencia],promedio:c_student_params[:promedio], course_id: Course.find(params[:course_id])[:id], student_id:Student.find(params[:student_id])[:id])
        json_response(@c_student, :created)
    end

    # PUT /teachers/:teacher_id/courses/:course_id/students/:student_id/c_students/:c_student_id
    def update
        @c_student.update(c_student_params)
        head :no_content
    end

    # DELETE /teachers/:teacher_id/courses/:course_id/students/:student_id/c_students/:c_student_id
    def destroy
        @c_student.destroy
        head :no_content
    end


    private

    def c_student_params
        params.permit(:asistencia, :promedio)
    end


    def set_course
        @course = Course.find(params[:course_id])
    end

    def set_student 
        @student= Student.find(params[:student_id])
    end
    
    def set_course_student_c_student
        @c_student = CStudent.where(id: params[:id], course_id: Course.find(params[:course_id])[:id], student_id:Student.find(params[:student_id])[:id])[0] 
    end


end
