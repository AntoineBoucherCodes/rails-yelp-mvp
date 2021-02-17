class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :category, inclusion: {in: %w(chinese italian french japanese belgian)}
  validates :name, :address, :category, presence: true

end
