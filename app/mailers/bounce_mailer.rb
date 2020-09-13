class BounceMailer < ApplicationMailer
  default from: 'bounces@kaigionrails.s01.ninja'

  def bounce
    @email = params[:email]
    mail(to: @email, subject: "Invalid Email bounced")
  end
end
