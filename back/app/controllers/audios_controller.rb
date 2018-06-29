class AudiosController < ApplicationController
    before_action :set_classroom
    before_action :set_classroom_audio, only: [:show, :update, :destroy]

  

    # GET /teachers/:teacher_id/courses/:course_id/classrooms/:classroom_id/audios
    def index
        json_response(@classroom.audios)
    end

    # GET /teachers/:teacher_id/courses/:course_id/classrooms/:classroom_id/audios/:audio_id
    def show
        json_response(@audio)
    end

    # POST /teachers/:teacher_id/courses/:course_id/classrooms/:classroom_id/audios
    def create
        @classroom.audios.create!(audio_params)
        json_response(@audio, :created)
    end

    # PUT /teachers/:teacher_id/courses/:course_id/classrooms/:classroom_id/audios/:audio_id
    def update
        @audio.update(audio_params)
        head :no_content
    end

    # DELETE /teachers/:teacher_id/courses/:course_id/classrooms/:classroom_id/audios/:audio_id
    def destroy
        @audio.destroy
        head :no_content
    end

    private

    def audio_params
        params.permit(:nombre, :url)
    end

    def set_classroom
        @classroom = Classroom.find(params[:classroom_id])
    end

    def set_classroom_audio
        @audio = @classroom.audios.find_by!(id: params[:id]) if @classroom
    end


end
