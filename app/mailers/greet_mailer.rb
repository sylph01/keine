class GreetMailer < ApplicationMailer
  default from: 'greet@kaigionrails.s01.ninja'

  def greet(inbound_email)
    @from_address = inbound_email.mail['from']
    mail(to: @from_address, subject: "Hello!")
  end
end
