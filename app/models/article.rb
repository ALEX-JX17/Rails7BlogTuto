class Article < ApplicationRecord
    has_many :comments
    validates_presence_of :title, on: :create, message: "No puede estar vacio"
    validates :body, presence: :true, length: {minimum:10}
end