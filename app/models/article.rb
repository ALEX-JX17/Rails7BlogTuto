class Article < ApplicationRecord
    include Visible
    
    has_many :comments

    validates_presence_of :title, on: :create, message: "No puede estar vacio"
    validates_presence_of :body, on: :create, message: "No puede estar vacio"
    validates :body, length: {minimum:2}, message: "No contener menos de 2 caracteres"

    
end