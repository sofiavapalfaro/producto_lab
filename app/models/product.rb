class Product < ApplicationRecord
  scope :order_by_date, -> { order(created_at: :desc)}
end
