class MessageMailer < ApplicationMailer
    def welcome_email(message)
        @message = message
        mail(to: 'lennonbellaire@gmail.com', subject: 'New message from Resiland')
      end
end
