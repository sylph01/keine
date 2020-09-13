class IssuerMailer < ApplicationMailer
  def issue(inbound_email)
    @user = params[:user]
    @key  = @user.key
    mail(to: inbound_email.mail.from.first, subject: "Your copy has been issued!")
  end
end
