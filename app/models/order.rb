class Order < ApplicationRecord
  belongs_to :user
  has_many :order_details
  validates :user_id, presence: true
end
