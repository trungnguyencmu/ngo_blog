class Article < ActiveRecord::Base
	paginates_per 20
  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :category

  has_attached_file                 :image, styles: { thumb: "540x322#" }, default_url: ':missing'
  validates_attachment_size         :image, :in => 0.megabytes..2.megabytes, message: 'The image must be smaller 2Mb'
  validates_attachment_content_type :image, content_type: ['image/jpeg', 'image/png'], message: 'Please select image png or jpg'

  delegate :name, to: :category, prefix: true


  def self.search(search)
	  if search
	    Article.where('title ILIKE ?', "%#{search}%")
	  else
	    Article.all
	  end
	end
end