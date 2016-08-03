class Notifications < ActionMailer::Base
  default from: "ani@dctacademy.com"

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
  
  def time_tracker(tracker)
    @tracker = tracker
    mail_ids = @tracker.batch.students.pluck(:email)*","
    mail to: "#{mail_ids}", subject: "Time Tracker -  Course:  #{@tracker.batch.course.name} "
  end

  def send_assignment(batch_assignment, batch, assignment)
    @batch_assignment = batch_assignment
    @batch = batch
    @assignment = assignment
    student_email_ids = batch.students.pluck(:email).join(",")
    mail to: "#{student_email_ids}", subject: "New Assignment - #{assignment.name}"
  end
  
  def new_user_waiting_for_approval(user)
    @user = user
    mail to: "aniruddha.s.g@gmail.com", subject: "New user registered for tymer app"
  end
  
end
