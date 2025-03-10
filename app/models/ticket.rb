class Ticket < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :description, presence: true
  validates :status, inclusion: { in: ["Open", "In Progress", "Closed"] }
end
