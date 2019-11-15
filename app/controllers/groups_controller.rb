class GroupsController < ApplicationController
  before_action :set_group, only: [:show, :edit, :update, :destroy]
  def index
    @groups = Group.all
  end

  def show
    @contacts = @group.contacts.order("first_name ASC")
  end

  def new
    @group = Group.new
  end
  
  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to group_path(@group)
    else
      redirect_to new_group_path
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
    params.require(:group).permit(:name, contact_ids: [])
  end
end
