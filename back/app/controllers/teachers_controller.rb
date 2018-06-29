class TeachersController < ApplicationController
    before_action :set_teacher, only: [:show, :update, :destroy]

    #GET /teachers
    def index
      @teachers = Teacher.all
      json_response(@teachers)
    end

    #POST /teachers
    def create
       @teacher = Teacher.create!(teacher_params)
       json_response(@teacher, :created)
    end

    # GET /teachers/:teacher_id
     def show
       json_response(@teacher)
     end
    
    # PUT /teacher/:teacher_id
    def update
      @teacher.update(teacher_params)
      head :no_content
    end

    # DELETE /teachers/:teacher_id
    def destroy
      @teacher.destroy
      head :no_content
    end

    private

    def teacher_params
      params.permit(:nombre, :correo, :edad, :rut, :especialidad)
    end

    def set_teacher
      @teacher = Teacher.find(params[:id])
    end
end
