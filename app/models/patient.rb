class Patient < ApplicationRecord
    def self.search(search)
        where("lastname LIKE ?", "%#{search}%")
        where("infection LIKE ?", "%#{search}%")
    end
    
    belongs_to :user 
    scope :status_count, -> { where(status: true).count}

end
