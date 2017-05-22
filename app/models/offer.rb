class Offer < ActiveRecord::Base
  belongs_to :shop

  validates :name, :presence => true

  validates :savings, :presence => true

  validates :validity, :presence => true
end
