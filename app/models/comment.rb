class Comment < ApplicationRecord
    validates :name, :email, :comment, presence: true
end
