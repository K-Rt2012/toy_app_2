class MicropostsController < ApplicationController
  def new
    @micropost = Micropost.new
    @users = User.all
  end

  def index
    @micropost = Micropost.all
  end

  def create
    #@user = User.find(params[:user_id])
    #@micropost = Micropost.new(content: params[:content],user: @user)

    @micropost = Micropost.new(content: params[:content],
                              user_id: params[:user_id])
    if @micropost.save
      redirect_to("/microposts/#{@micropost.id}")
    else
      @users = User.all
      render("microposts/new")
    end
  end

  def show
    @micropost = Micropost.find_by(id: params[:id])
  end

  def edit
    @micropost = Micropost.find_by(id: params[:id])
    @users = User.all
  end

  def update
    @micropost = Micropost.find_by(id: params[:id])
    @micropost.content = params[:content]
    @micropost.user_id = params[:user_id]

    if @micropost.save
      redirect_to("/microposts/#{@micropost.id}")
    else
      render("microposts/edit")
    end
  end

  def destroy
    @micropost = Micropost.find_by(id: params[:id])
    @micropost.destroy
    redirect_to("/microposts")
  end

end
