class TestsController < ApplicationController
    before_action :set_c_student
    before_action :set_c_student_test, only: [:show, :update, :destroy]

  

    # GET /teachers/:teacher_id/courses/:course_id/students/:student_id/c_students/:c_student_id/tests
    def index
        json_response(@c_student.tests)
    end

    # GET /teachers/:teacher_id/courses/:course_id/students/:student_id/c_students/:c_student_id/tests/:test_id
    def show
        json_response(@test)
    end

    # POST /teachers/:teacher_id/courses/:course_id/students/:student_id/c_students/:c_student_id/tests
    def create
        @test = Test.create!(nota:test_params[:nota], fechaevaluacion:test_params[:fechaevaluacion], tipoevaluacion:test_params[:tipoevaluacion], ponderacion:test_params[:ponderacion], c_student_id:CStudent.find(params[:c_student_id])[:id])    
        json_response(@test, :created)
    end

    # PUT /teachers/:teacher_id/courses/:course_id/students/:student_id/c_students/:c_student_id/tests/:test_id
    def update
        @test.update(test_params)
        head :no_content
    end

    # DELETE /teachers/:teacher_id/courses/:course_id/students/:student_id/c_students/:c_student_id/tests/:test_id
    def destroy
        @test.destroy
        head :no_content
    end

    private

    def test_params
        params.permit(:nota, :fechaevaluacion, :tipoevaluacion, :ponderacion)
    end

    def set_c_student
        @c_student = CStudent.find(params[:c_student_id])
    end

    def set_c_student_test
        @test = @c_student.tests.find_by!(id: params[:id]) if @c_student
    end


end
