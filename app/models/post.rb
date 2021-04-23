class Post < ApplicationRecord
    validates_presence_of :title, :description
    validates :title, presence: true,
                    length: { minimum: 5 }           
end
