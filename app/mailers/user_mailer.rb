class UserMailer < ApplicationMailer
  default from: "jadames.rtest@gmail.com"

  def contact_form(email, name)
    mail(:from => email, :to => 'jadames.rtest@gmail.com', :subject => "A new message from #{name}")
  end
end
