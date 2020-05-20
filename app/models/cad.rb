class Cad < ApplicationRecord
  belongs_to :user
  belongs_to :genre

  validates :design, :company, :product_name, presence: true
end
