class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  has_many_attached :images
  has_one :like
  has_many :comments, dependent: :destroy
  has_many :items_categories
  has_many :categories, through: :items_categories
  accepts_nested_attributes_for :items_categories, allow_destroy: true
  belongs_to :brand,optional: true
  belongs_to :user
end
