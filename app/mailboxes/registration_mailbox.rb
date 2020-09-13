class RegistrationMailbox < ApplicationMailbox
  def process
    from_address     = mail.from.first
    local_part_of_to = mail.to.first.split("@").first
    user = User.find_by(uuid: local_part_of_to)
    if user != nil
      if user.redeemed? == false
        user.email = from_address
        user.save
        # then return key
        IssuerMailer.with(user: user).issue(inbound_email).deliver_now
      else
        # already redeemed
        if user.email == from_address
          # return key
          IssuerMailer.with(user: user).issue(inbound_email).deliver_now
        else
          bounce_with BounceMailer.already_redeemed(inbound_email)
        end
      end
    else
      bounce_with BounceMailer.bounce(inbound_email)
    end
  end
end
