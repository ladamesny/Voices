class MailWorker
  include Sidekiq::Worker

  def perform(contact_form)
    message_details = JSON.parse(contact_form)
    ContactMailer.contact_form(message_details).deliver_later
  end
end