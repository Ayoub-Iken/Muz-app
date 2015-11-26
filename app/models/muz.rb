class Muz < ActiveRecord::Base
	belongs_to :user
	has_many :comments, dependent: :destroy

	 has_attached_file :picture, styles: { medium: "300x300>"}
  	 validates_attachment_content_type :picture, content_type: /\Aimage\/.*\Z/
end
