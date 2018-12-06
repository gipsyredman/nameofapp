class UserMailer < ApplicationMailer
  default from: "gipsy.redman@gmail.com"

  def contact_form(email, name, message)
  @message = message
    mail(from: email,
      to: 'gipsy.redman@gmail.com',
      subject: "A new contact form message on QBA from #{name}")
  end
end
