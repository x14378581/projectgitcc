class Patient < ApplicationRecord
    def self.search(search)
        where("lastname LIKE ?", "%#{search}%")
        where("infection LIKE ?", "%#{search}%")
    end
end
