class NewApptEmailMailer < ApplicationMailer
    def new_app(app)

        @app = app
    
        mail to: @app.email,
             subject: "Appointment Reminder for #{@app.name}"
      end
end
