module EventsHelper
  def attendable?(event, user)
    !event.attendees.include?(user) && event.isupcoming
  end
end
