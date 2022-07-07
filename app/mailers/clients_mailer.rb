class ClientsMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.clients_mailer.registered.subject
  #
  def registered
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
