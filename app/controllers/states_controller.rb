class StatesController < ApplicationController

  before_filter :find_state, :only => [:show, :edit, :update, :destroy]

  def find_state
    @state = State.find(params[:id])
  end

  def index
    list
    render('list')
  end

  def new
    @state = State.new
    1.times do
      @cities = @state.cities.build
      1.times {@cities.areas.build}
    end
  end

  def create
    @state = State.new(params[:state])
    if @state.save
      redirect_to @state, :notice => "Successfully created State."
    else
      render :action => 'new'
    end
  end

  def list
    @states = State.all(:order => "name")
  end

  def show
  end

  def edit
  end

  def update
    if @state.update_attributes(params[:state])
      redirect_to @state, :notice => "Successfully updated State."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @state.destroy
    redirect_to states_url, :notice => "Successfully destroyed State."
  end

end
