class UserMailer < ActionMailer::Base
  default from: "from@studyline.com"
  
  def client_regis_email(client)
    @client = client
    @url  = 'http://studyline.in/'
    mail(to: @client.email, subject: 'Welcome to My studyline.in')
    mail(to: "pmc.subrata@gmail.com", subject: 'Welcome to My studyline.in(A copy to admin)', body:"For client registration")

  end
  
  def students_regis_email(student)
    @student = student
    @url  = 'http://studyline.in/'
    mail(to: @student.email, subject: 'Welcome to My studyline.in')
    mail(to: "pmc.subrata@gmail.com", subject: 'Welcome to My studyline.in(A copy to admin)',body:"For student registration")
  end
  
end
