class Cad < ApplicationRecord
  belongs_to :user
  mount_uploader :design, DesignUploader

  validates :design, :company, :product_name, presence: true
end
