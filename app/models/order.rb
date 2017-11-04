class Order < ApplicationRecord
  belongs_to :user
  has_many   :order_items
  has_many   :items, through: :order_items

  validates :status, presence: true

  enum status: [ "ordered", "paid", "cancelled", "completed" ]

  def format_date
    created_at.strftime(format='%m/%d/%Y')
  end

end
