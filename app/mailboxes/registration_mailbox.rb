class RegistrationMailbox < ApplicationMailbox
  def process
    from_address = mail.from
    local_part   = from_address.split("@")[0]
    u = User.find_by(uuid: local_part)
    if u != nil
      if u.redeemed? == false
        u.email = from_address
        u.save
        # then return key
      else
        # already redeemed
        if u.email != from_address
          # return key
        else
          bounce_with BounceMailer.already_redeemed(inbound_email)
        end
      end
    else
      bounce_with BounceMailer.bounce(inbound_email)
    end
  end
end
