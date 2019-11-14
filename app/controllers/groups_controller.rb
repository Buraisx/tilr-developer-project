class GroupsController < ApplicationController
  before_action :set_group, only: [:show, :edit, :update, :destroy]
  def index
    @groups = Group.all
  end

  def show
    @contacts = @group.contacts
  end

  def new
    @group = Group.new
  end
  
  def create
    @group = Group.new(group_params)
    if @group.save
      # flash[:success] = "Object successfully created"
      redirect_to group_path(@group)
    else
      format.html { render :new }
      # flash[:error] = "Something went wrong"
      # render 'new'
    end
  end  

  def edit
  end

  def update
    if @group.update_attributes(group_params)
      redirect_to group_path(@group)
    else
      redirect_to group_path
    end
  end

  def destroy
    @group.destroy
    redirect_to groups_path
  end

private
  def set_group
    @group = Group.find(params[:id])
  end

  def group_params
    params.require(:group).permit(:name)
  end
end
