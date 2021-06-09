class Event < ApplicationRecord
  has_many :invitations, foreign_key: 'user_id'
  belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'
  has_many :attendees, through: :invitations, class_name: 'User', foreign_key: 'attendee_id', source: :attendee
end
