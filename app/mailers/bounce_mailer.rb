class BounceMailer < ApplicationMailer
  default from: 'bounces@kaigionrails.s01.ninja'

  def bounce(inbound_email)
    mail(to: inbound_email.mail['from'], subject: "Invalid Email bounced")
  end
end
