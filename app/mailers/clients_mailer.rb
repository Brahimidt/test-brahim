class ClientsMailer < ApplicationMailer

  def registered(myEmail)
    @greeting = "Hi"

    mail to: myEmail
  end
end
