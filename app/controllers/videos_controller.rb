  class VideosController < ApplicationController

    def index
        @videos = Video.all
        render json: @videos 
    end

    def create
        # byebug
        thumbnail =  Cloudinary::Uploader.upload(params[:thumbnail])
        given_video = Cloudinary::Uploader.upload_large(params[:given_video], :resource_type => :video )
        @video = Video.create(
            title: params[:title], 
            description: params[:description],  
            given_video: given_video['url'], 
            thumbnail: thumbnail['url'])  
        render json: @video  
    end

    def update
        @video = Video.find(params[:id])
        @video.update(video_params)
        render json: @video
    end

    # def home_page
    #     byebug
    # end


private

    def video_params
        params.permit(:title, :description, :user_id,  :given_video, :thumbnail)
    end

end