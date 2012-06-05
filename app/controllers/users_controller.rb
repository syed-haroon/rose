class UsersController < ApplicationController

  before_filter :find_user, :only => [:show, :edit, :update, :destroy]

  def find_user
    @user = User.find(params[:id])
  end

  def index
    list
    render('list')
  end

  def new
    @user = User.new
    @qualifications = Qualification.all
  end

  def list
    @users = User.all
  end

  def show
    @qualifications = @user.qualifications.map { |q| q.name }.join(', ')
  end

  def edit
    @qualifications = Qualification.all
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to @user, :notice => "Successfully created State."
    else
      render :action => 'new'
    end
  end

  def update
    if @user.update_attributes(params[:user])
      redirect_to @user, :notice => "User Successfully updated."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @user.destroy
    redirect_to users_url, :notice => "User Destroyed Successfully."
  end

end