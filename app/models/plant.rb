class Plant < ApplicationRecord
    validates :name, presence: true
    validates :image, presence: true
    validates :price, presence: true, numericality: { greater_than: 0 }
  
    # ... any additional code
  end
  