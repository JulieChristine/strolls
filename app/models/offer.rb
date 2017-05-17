class Offer < ActiveRecord::Base
  validates :name, :presence => true
end

class Offer < ActiveRecord::Base
  validates :savings, :presence => true
end

class Offer < ActiveRecord::Base
  validates :validity, :presence => true
end
