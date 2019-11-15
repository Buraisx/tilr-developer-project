class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]

  def index
    @contacts = Contact.all.order("first_name ASC")
  end

  def new
    @contact = Contact.new
  end
  
  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      # flash[:success] = "Object successfully created"
      redirect_to contact_path(@contact)
    else
      format.html { render :new }
      # flash[:error] = "Something went wrong"
      # render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @contact.update_attributes(contact_params)
      redirect_to contact_path(@contact)
    else
      redirect_to contact_path
    end
  end
  
  def destroy
    @contact.destroy
    redirect_to contacts_path
  end

  def search
    @found_contacts = Contact.search(params[:search]).order("first_name ASC")
  end
private
  def set_contact
    @contact = Contact.find(params[:id])
  end

  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :phone_number, :email, :avatar)
  end
end
