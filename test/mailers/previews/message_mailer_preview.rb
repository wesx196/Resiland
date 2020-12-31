# Preview all emails at http://localhost:3000/rails/mailers/message_mailer
class MessageMailerPreview < ActionMailer::Preview
    def message_mail_preview
        MessageMailer.message_email(Message.first)
      end
    
end
