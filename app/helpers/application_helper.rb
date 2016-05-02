module ApplicationHelper

  def format_time time
    DateTime.parse(time).strftime("%m/%d/%Y %I:%M %p")
  end

end
