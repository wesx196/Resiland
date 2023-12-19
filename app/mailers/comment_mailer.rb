class CommentMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.comment_mailer.new_comment.subject
  #
  def new_appt(appt)
    @comment =params[:comment]
    @item = @appt.item

    mail to: @item.appt.email,
         subject: "Appointment reminder for #{@item.name}"
  end
end
