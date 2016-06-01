class HomesController < ApplicationController

  def index
  end

  def thank_you
    @first_name = params[:first_name]
    @last_name = params[:last_name]
    @email = params[:email]
    @message = params[:message]
    ActionMailer::Base.mail(:from => @email,
      :to => 'jimmy.adames@gmail.com',
      :subject => "A new contact message from #{@first_name} #{@last_name}",
      :body => @message).deliver_now
  end

  def about

  end

  def advocacy

  end

  def individuals

  end

  def blog

  end

  def contact

  end
end
