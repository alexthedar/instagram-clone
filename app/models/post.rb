class Post < ActiveRecord::Base
  validates :image, presence: true

  has_attached_file :image, styles: { :medium => "640x640" }
  validates_attachment_content_type :image, content_type: { content_type: ["image/jpeg", "image/png"] }
  validates_attachment_file_name :image, matches: [/png\Z/, /jpe?g\Z/]


end
