module EventsHelper

  def attendable?(event, user)
    !!event.attendees.include?(user.email) && event.upcoming
  end
end
