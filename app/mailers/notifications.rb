class Notifications < ActionMailer::Base
  default from: "mail@formio.in"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications.new_message.subject
  #
  

  def new_message(message)
    @message = message
    mail_ids = @message.batch.students.pluck(:email)*","
    mail to: "#{mail_ids}", subject: "A message from your trainer"
  end
end
