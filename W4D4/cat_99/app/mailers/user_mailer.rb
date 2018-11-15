class UserMailer < ApplicationMailer
  default from: 'krame490@gmail.com'

  def welcome_email(user)
    "Hello and welcome to my site"
  end
end
