class Comment < ApplicationRecord
    belongs_to :character
    belongs_to :screenshot
end
