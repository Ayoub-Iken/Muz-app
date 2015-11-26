class User < ActiveRecord::Base
	has_many :muzs, dependent: :destroy

	has_attached_file :image, styles: { medium: "300x300>", thumb: "24x24>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
