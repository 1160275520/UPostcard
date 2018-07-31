class CustomfrontsController < ApplicationController
  before_action :authenticate_user!

   def new
      @customfront = Customfront.new
      @background_pic = "homepic"
   end

   def create
      @customfront = Customfront.new
      key = current_user.id.to_s+Customfront.all.length.to_s
      path = params[:customfront][:image_url].path
      url = upload(key, path)
      @customfront.image_url = url
      @customfront.save!
      redirect_to "/postcards/new?picture_url=#{url}"
   end

  private
  def upload(key, path)
    obj = Bucket.object(key)
    obj.upload_file(path)
    obj.public_url
  end

    def customfront_params
    params.require(:customfront).permit(:image_url)
  end

end 