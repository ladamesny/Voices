class HomesController < ApplicationController

  def index;end

  def about;end

  def advocacy;end

  def individuals;end

  def contact;end

  def send_message
    contact_form = {}
    contact_form[:first_name] = params[:first_name]
    contact_form[:last_name] = params[:last_name]
    contact_form[:email] = params[:email]
    contact_form[:message] = params[:message]
    MailWorker.perform_async(contact_form.to_json)
  end
end
