class RegistrationMailbox < ApplicationMailbox
  def process
    if mail.subject == "hogea"
      inbound_email.bounced!
    else
    end
  end
end
