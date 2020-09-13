class RegistrationMailbox < ApplicationMailbox
  def process
    if mail.subject == "hogea"
      # inbound_email.bounced!
      bounce_with BounceMailer.bounce(email: inbound_email.mail['from'])
    else
    end
  end
end
