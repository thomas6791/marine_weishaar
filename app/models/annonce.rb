class Annonce < ApplicationRecord
    has_many_attached :photos
    extend FriendlyId
    friendly_id :titre, use: :slugged
    monetize :price_cents
    geocoded_by :full_address
    after_validation :geocode, if: :will_save_change_to_address?
end
