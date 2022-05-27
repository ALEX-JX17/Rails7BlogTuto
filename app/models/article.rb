class Article < ApplicationRecord
    include Visible

    has_many :comments, dependent: :destroy

    validates_presence_of :title, on: :create, message: "No puede estar vacio"
    validates_presence_of :body, on: :create, message: "No puede estar vacio"
    validates :body, length: {minimum:2, too_short: "Se requieren al menos de 2 caracteres"}
 
end