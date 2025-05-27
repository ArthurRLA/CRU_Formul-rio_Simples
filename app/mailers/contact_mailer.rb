class ContactMailer < ApplicationMailer
  default to: 'funcionarios@empresa.com'

  def contact_email(contact)
    @contact = contact
    mail(subject: "Nova mensagem de \#{@contact.name}")
  end
end
