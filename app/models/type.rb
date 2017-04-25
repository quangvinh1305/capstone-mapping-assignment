class Type < ActiveRecord::Base
  has_many :things
  validates :name, presence: true
  default_scope { order(name: :asc) }
end
