class RegistrationMailbox < ApplicationMailbox
  def process
    if mail.subject == "hogea"
      # inbound_email.bounced!
      bounce_with BounceMailer.bounce(inbound_email)
    else
    end
  end
end
