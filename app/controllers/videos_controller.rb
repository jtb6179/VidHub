class VideosController < ApplicationController

    def index
        @videos = Video.all
        render json: @videos 
    end

    def create
        @video = Video.create(video_params)  
        render json: @video  
    end

    def update
        @video = Video.find(params[:id])
        @video.update(video_params)
        render json: @video
    end


private

    def video_params
        params.require.(:video).permit(:title, :description, :user_id,  :given_video)
    end

end
