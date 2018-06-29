class CalendarController < ApplicationController
    before_action :set_student
    before_action :set_student_calendar, only: [:show, :update, :destroy]

   
    # GET /students/:student_id/calendar 
    def index
        json_response(@student.calendar)
    end

    # GET /students/:student_id/calendar/:calendar_id 
    def show
        json_response(@calendar)
    end

    # POST /students/:student_id/calendar 
    def create
        @calendar = Calendar.create!(fecha:calendar_params[:fecha],student_id:Student.find(params[:student_id])[:id])    
        #@student.calendar.create!(fecha:calendar_params[:fecha])
        json_response(@calendar, :created)
    end

    # PUT /students/:student_id/calendar/:calendar_id 
    def update
        @calendar.update(calendar_params)
        head :no_content
    end

    # DELETE /students/:student_id/calendar/:calendar_id 
    def destroy
        @calendar.destroy
        head :no_content
    end

    private

    def calendar_params
        params.permit(:fecha)
    end

    def set_student
        @student = Student.find(params[:student_id])
    end

    def set_student_calendar
        @calendar = @student.calendar.find_by!(id: params[:id]) if @student
    end

end
