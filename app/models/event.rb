class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  has_many :turnouts
  has_many :attendees, class_name: 'User', through: :turnouts, source: 'attendee'
end
