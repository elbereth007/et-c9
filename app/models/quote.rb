class Quote < ApplicationRecord
    # next line added 16 may 17
    validates :saying, presence: true, length: { maximum: 140, minimum: 3 }
    validates :author, presence: true, length: { maximum: 50, minimum: 3 }
end
