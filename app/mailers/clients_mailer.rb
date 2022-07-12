class ClientsMailer < ApplicationMailer

  def registered(client)
    @greeting = "Hi"
    @client = client
    @url  = "http://localhost:3000/accepted/"+@client.id.to_s

    mail to: client.email
  end
end
