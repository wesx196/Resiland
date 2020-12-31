class TestMailer < ApplicationMailer
      
        def welcome_email(comment)
          @comment = comment
          mail(to: 'lennonbellaire@gmail.com', subject: 'New Message in Resiland Inbox')
        end
      
end
