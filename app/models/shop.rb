class Shop < ActiveRecord::Base
  has_many :offers

  validates :name, :presence => true
  validates :address, :presence => true
  validates :area, :presence => true
  validates :description, :presence => true
  validates :picture, :presence => true
  validates :opening_hours, :presence => true
  validates :location, :presence => true
  validates :website, :presence => true
end
