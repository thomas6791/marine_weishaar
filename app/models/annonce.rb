class Annonce < ApplicationRecord
    has_many_attached :photos
    monetize :price_cents
end
