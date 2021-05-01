class Post < ApplicationRecord #this line means Post is the subclass of ApplicationRecord class
    has_many :comments
end
