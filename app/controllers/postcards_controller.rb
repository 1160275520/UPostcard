class PostcardsController < ApplicationController
   before_action :authenticate_user!, except: [:info]

   def index
      @postcards = Postcard.where(user: current_user.id)
   end

   def show
      @postcard = Postcard.find(params[:id])
      res = MY_LOB.postcards.find(@postcard.lobid)
      @postcard.link = res["url"]
      @postcard.save!
      @background_pic = "homepic"
   end

   def new
      @postcard = Postcard.new(front: params[:picture_url])
      @background_pic = "homepic"
   end

   def create
      @postcard = Postcard.create(postcard_params)
      res = PostcardSender.new.send(postcard_params)
      @postcard.update(lobid: res["id"])
      @postcard.update(user: current_user.id)
      @postcard.save!
      redirect_to "/postcards/#{@postcard.id}"
   end

  def destroy
      @postcard = Postcard.find(params[:id])
      @postcard.destroy
      redirect_to "/postcards"
  end

  def info
      @background_pic = "homepic"
  end

  def upload
      @postcard = Postcard.new
      @background_pic = "homepic"
      key = current_user.id.to_s
      # path = params[:image].path
      # url = uploadpic(key, path)
      # redirect_to "postcards/new?picture_url=<%= url%>"
  end


  #to prevent SQL injection, for create and update #called strong params 
  private
  def postcard_params
    params.require(:postcard).permit(:r_name, :r_address_line1, :r_address_line2,
      :r_city, :r_state, :r_zip, :s_name, :s_address_line1, :s_address_line2,
      :s_city, :s_state, :s_zip, :front, :name)
  end

  def uploadpic(key, path)
    obj = Bucket.object(key)
    obj.upload_file(path)
    obj.public_url
  end

end 