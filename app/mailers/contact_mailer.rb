class ContactMailer < ApplicationMailer
  default to: 'ssijbrandij@gmail.com' # this should really be an ENV var

  def contact_email(name, email, body)
    @name = name
    @email = email
    @body = body

    mail(from: email, subject: 'Contact Form Message')
  end
end
