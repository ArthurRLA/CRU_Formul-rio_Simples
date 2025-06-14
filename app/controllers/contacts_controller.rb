class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.valid?
      ContactMailer.contact_email(@contact).deliver_now
      redirect_to root_path, notice: 'Mensagem enviada com sucesso.'
    else
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :address, :city, :state, :phone, :message)
  end
end