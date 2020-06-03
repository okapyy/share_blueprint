class ContactMailer < ApplicationMailer
  def contact_mail(contact)
    @contact = contact
    mail to:"o73.okada.asuka@gmail.com",subject: "confirmation"
  end
end
