class Event < ApplicationRecord
  acts_as_votable
  has_attached_file :poster, styles: { medium: "550x300", thumb: "300x200" }
  validates_attachment_content_type :poster, content_type: /\Aimage\/.*\Z/
  has_many :comments

  # validates_attachment_file_name :poster, matches: [/png\Z/, /jpe?g\Z/]
end
