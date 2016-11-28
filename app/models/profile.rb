class Profile < ApplicationRecord
  belongs_to :user

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :job_title, presence: true
  validates :phone_number, presence: true
  validates :contact_email, presence: true
  validates :description, presence: true
end
