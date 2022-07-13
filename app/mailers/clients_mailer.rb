class ClientsMailer < ApplicationMailer

  def registered(client)
    @greeting = "Hi"
    @client = client
    @url  = "http://localhost:3000/accept/"+@client.id.to_s
    mail to: client.email
  end
end
