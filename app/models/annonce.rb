class Annonce < ApplicationRecord
    has_many_attached :photos
    monetize :price_cents
    geocoded_by :full_address
    after_validation :geocode, if: :will_save_change_to_address?
end
