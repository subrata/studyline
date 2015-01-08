class UserMailer < ActionMailer::Base
  default from: "from@studyline.com"
  
  def client_regis_email(client)
    @client = client
    @url  = 'http://studyline.in/'
    mail(to: @client.email, subject: 'Welcome to My studyline.in')
  end
  
  def students_regis_email(student)
    @student = student
    @url  = 'http://studyline.in/'
    mail(to: @student.email, subject: 'Welcome to My studyline.in')
  end
  
end
