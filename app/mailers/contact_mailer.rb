class ContactMailer < ApplicationMailer
  default to: 'funcionarios@empresa.com', from: 'nao-responder@empresa.com'

  def contact_email(contact)
    @contact = contact
    mail(subject: "Novo formulário recebido de #{@contact.name}") do |format|
      format.html { render 'contact_email' }
    end
  end
end
