class ContactsController < ApplicationController
  def show
   @contact = Contact.find_by(id: 1)
   render template: "contacts/show"
  end

  def index
  @contacts = Contact.all
  render template: "contacts/index"
  end

  def create
  @contact = Contact.new(
  first_name: params[:first_name],
  last_name: params[:last_name],
  phone_number: params[:phone_number],
  email: params[:email],
  address: params[:address],
  latitude: params[:latitude],
  longitude: params[:longitude]
  )
  @contact.save
  render :show
  end

  def update
    @contact = Contact.find_by(id: params[:id])
    @contact.first_name = params[:first_name] || @contact.first_name
    @contact.last_name = params[:last_name] || @contact.last_name
    @contact.phone_number = params[:phone_number] || @contact.phone_number 
    @contact.email = params[:email] || @contact.email 
    @contact.address = params[:address] || @contact.address
   
    @contact.save
    render :show 
  end
end