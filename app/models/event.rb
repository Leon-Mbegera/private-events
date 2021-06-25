class Event < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :attendes, foreign_key: "attendee_id", class_name: "User" 
end
