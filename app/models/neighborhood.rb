class Neighborhood < ActiveRecord::Base
  validates :name, presence: true
  validates :nickname, presence: true
  validates :population, presence: true
  validates :borough, presence: true
  validates :description, presence: true

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: ":style/brooklyn_nabes.jpg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end