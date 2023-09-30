# app/models/sample.rb

class Sample < ApplicationRecord
    validates :title, presence: true
end