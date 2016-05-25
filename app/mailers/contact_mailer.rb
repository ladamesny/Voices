class ContactMailer < ApplicationMailer
  default from: "jadames.rtest@gmail.com"

  def contact_form(message_details)
    @message_details = message_details
    mail(:from => message_details[:email], :to => 'jadames.rtest@gmail.com', :subject => "A new message from #{message_details[:first_name]} #{message_details[:last_name]}")
  end
end