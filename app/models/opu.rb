class Opu < ApplicationRecord
    belongs_to :user
    has_one_attached :image, :dependent => :destory
end
