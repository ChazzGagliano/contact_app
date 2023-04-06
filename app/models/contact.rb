class Contact < ApplicationRecord
  def coordinates
  [city, state].compact.join('. ')
  include Geocoder::Model::Mongoid
  geocoded_by :address
  end
end

