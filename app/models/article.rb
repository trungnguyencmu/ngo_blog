class Article < ApplicationRecord
	belongs_to :category

  has_attached_file                 :image, styles: { thumb: "540x322#" }
  validates_attachment_size         :image, :in => 0.megabytes..2.megabytes, message: 'The image must be smaller 2Mb'
  validates_attachment_content_type :image, content_type: ['image/jpeg', 'image/png'], message: 'Please select image png or jpg'
end