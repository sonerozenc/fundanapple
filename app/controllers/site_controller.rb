class SiteController < ApplicationController
  
  # GET / -- displays the login form
	def index
  	@users = User.all
  	@user = User.new

    @projects = Project.all
    @project = Project.new

  	@artworks = Artwork.all
  	@artwork = Artwork.new
    
	end
	
	# POST /login -- logs the user in and redirects to :index
	def login
	  @user = User.find_by_email(params[:email])
	    
	  if @user and @user.authenticate (params[:password] )
      session[:user_id] = @user.id
      redirect_to root_url, notice: "Thank you for logging in!"
    else
      @user = User.new
      flash.now.alert = "Email or password is invalid!"
      render :index
		end 
	end
	  
  # GET /logout -- logs the user out and redirects to :index
  def logout
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out"
	end 
end
