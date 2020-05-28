class Cad < ApplicationRecord
  belongs_to :user
  mount_uploader :design, DesignUploader
  mount_uploader :thumbnail, ThumbUploader

  validates :design, :company, :product_name, presence: true

  def self.search(search)
    if search
      Cad.where('company LIKE ? OR product_name LIKE ?', "#{search}", "#{search}")
    else
      Cad.all
    end
  end
end
