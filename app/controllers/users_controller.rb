class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def index
    @user = User.all
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def create
    @user = User.new(name: params[:name], 
                      email: params[:email],
                      password: params[:password]
                      )
    if @user.save
      redirect_to("/users/#{@user.id}")
    else
      render("users/new")
    end
  end

  def show
    @user = User.find_by(id: params[:id])
    #@microposts = Micropost.where(user_id: @user.id)
    @microposts = @user.microposts
  end

  def update
    @user = User.find_by(id: params[:id])
    #@user.name = params[:name]
    #@user.email = params[:email]
    def users_params
      params.require(:user).permit(:image, :name, :email)
    end
    if @user.update(users_params)
    #if @user.save
      redirect_to("/users/#{@user.id}")
    else
      render("users/edit")
    end
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
    redirect_to("/users")
  end

  def top
  end
end
