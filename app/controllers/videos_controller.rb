class VideosController < ApplicationController
    before_action :authorized, only: [:create]

    def index
        @videos = Video.all
        render json: @videos 
    end

    def create
        thumbnail =  Cloudinary::Uploader.upload_large(params[:thumbnail])
        given_video = Cloudinary::Uploader.upload_large(params[:given_video], :resource_type => :video )
        byebug
       # what is being passed in is an array but not a string
       #getting this error: TypeError (no implicit conversion of Array into String)
        # @video = Video.create(
        #     title: params[:title], 
        #     description: params[:description],  
        #     given_video: given_video['url'], 
        #     thumbnail: thumbnail['url'])  
        # render json: @video  
    end

    def update
        @video = Video.find(params[:id])
        @video.update(video_params)
        render json: @video
    end

    # def home_page
    #     byebug
    # end


# private

#     def video_params
#         params.permit(:title, :description, :user_id,  :given_video, :thumbnail)
#     end

end
