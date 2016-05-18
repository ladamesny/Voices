class HomesController < ApplicationController

  def index
    @name = params[:name]
    @email = params[:email]
    ActionMailer::Base.mail(:from => @email,
      :to => 'jadames.rtest@gmail.com',
      :subject => "A new information request from #{@name}",
      :body => "Thanks for your message").deliver_now
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
