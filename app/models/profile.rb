class Profile < ApplicationRecord
  belongs_to :user
  has_attached_file :avatar,
                    :styles => { :medium => "300x300>", :thumb => "100x100>" },
                    :default_url => "missing.jpg"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :job_title, presence: true
  validates :phone_number, presence: true
  validates :contact_email, presence: true
  validates :description, presence: true
end
