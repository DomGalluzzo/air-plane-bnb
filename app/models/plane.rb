class Plane < ApplicationRecord
  belongs_to :user

  def self.search(search)
    if search
      city = Plane.find_by(address: search)
        if city
          self.where(address: city)
        else
          @planes = Plane.all
        end
    else
      @planes = Plane.all
    end
  end
end
