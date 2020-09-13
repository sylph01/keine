class GreetMailbox < ApplicationMailbox
  def process
    GreetMailer.greet(inbound_email).deliver_now
  end
end
