class Patient < ApplicationRecord
    belongs_to :user 
    scope :status_count, -> { where(status: true).count}
    
    
    def self.search(search)
        where("firstname LIKE ?", "%#{search}%") 
    end
end

