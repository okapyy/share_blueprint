class Cad < ApplicationRecord
  belongs_to :user
  mount_uploader :design, DesignUploader
  mount_uploader :thumbnail, ThumbUploader

  validates :design, :company, :product_name, presence: true
end
