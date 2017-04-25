class Thing < ActiveRecord::Base
  include Protectable
  validates :name, :presence=>true

  has_many :thing_images, inverse_of: :thing, dependent: :destroy
  belongs_to :type

  scope :not_linked, ->(image) {
    where.not(:id=>ThingImage.select(:thing_id).where(:image=>image))
  }
  scope :with_type, ->(type_id) {
    where(type_id: type_id)
  }

  def images
    thing_images.collect { |ti| ti.image }
  end
end
