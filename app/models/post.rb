class Post < ApplicationRecord
    validates_presence_of :title, :text
    # validates :title, presence: true,
end
