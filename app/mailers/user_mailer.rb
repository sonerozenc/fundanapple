class UserMailer < ActionMailer::Base
  default from: "info@razorlab.co.uk"

	def welcome_email(user)
    @user = user
    @url  = "http://localhost:3000"
    mail(to: @user.email, subject: "Welcome to FundAnApple")
  end
end
