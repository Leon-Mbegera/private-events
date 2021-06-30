class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  has_many :turnouts
  has_many :attendees, class_name: 'User', through: :turnouts, source: 'attendee'

  scope :past, -> { where('event_date < ?', DateTime.now) }
  scope :upcoming, -> { where('event_date > ?', DateTime.now) }

  def isupcoming
    Event.upcoming.include?(self)
  end
end
