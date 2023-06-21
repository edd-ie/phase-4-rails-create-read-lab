class Plant < ApplicationRecord
    def price
        x = Plant.find(self.id)
        x[:price]
    end
end
