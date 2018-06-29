class VideosController < ApplicationController
    before_action :set_classroom
    before_action :set_classroom_video, only: [:show, :update, :destroy]


    #GET /teachers/:teacher_id/courses/:course_id/classrooms/:classroom_id/videos
    def index
       json_response(@classroom.videos)
    end
    
    #GET /teachers/:teacher_id/courses/:course_id/classrooms/:classroom_id/videos/:video_id
    def show
       json_response(@video)
    end

    #POST /teachers/:teacher_id/courses/:course_id/classrooms/:classroom_id/videos
    def create
       @vvideo=@classroom.videos.create!(video_params)
       json_response(@vvideo, :created)
    end

    #PUT /teachers/:teacher_id/courses/:course_id/classrooms/:classroom_id/videos/:video_id
    def update
       @video.update(video_params)
       head :no_content
    end

    #DELETE /teachers/:teacher_id/courses/:course_id/classrooms/:classroom_id/videos/:video_id
    def destroy
       @video.destroy
       head :no_content
    end

    private

    def video_params
       params.permit(:nombre, :url)
    end

    def set_classroom
       @classroom = Classroom.find(params[:classroom_id])
    end

    def set_classroom_video
       @video = @classroom.videos.find_by!(id: params[:id]) if @classroom
    end

    # def postVideo
    #     nombre = params[:nombre]
    #     url = params[:url]
    #     videos = Video.new(:nombre => nombre,:url => url)
    #     videos.save
    #     render json: {status: 'SUCCESS',message: 'videos', data:videos}, status: :ok
    # end 

    #def getVideo 

    #end 
end
