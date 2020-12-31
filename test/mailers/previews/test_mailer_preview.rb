# Preview all emails at http://localhost:3000/rails/mailers/test_mailer
class TestMailerPreview < ActionMailer::Preview
    def welcome_mail_preview
        TestMailer.welcome_email(Comment.first)
      end    
end
