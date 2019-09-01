class Contact < ApplicationRecord

  validates :email, :subject, presence: true
end
