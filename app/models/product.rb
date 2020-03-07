# frozen_string_literal: true

class Product < ActiveRecord::Base
  validates :title, :description, :image_url, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }
  validates :title, uniqueness: true, length: { minimum: 2 }
  validates :image_url, allow_blank: true, format: { with: /\.(gif|jpg|png|jpeg)\Z/i,
                                                     message: 'must be a URL for GIF, JPG or PNG image.' }

  has_many :line_items
  before_destroy :ensure_not_referenced_by_any_line_item

  def ensure_not_referenced_by_any_line_item
    if line_items.empty?
      true
    else
      errors.add(:base, 'существуют товарные позиции')
      false
    end
  end

  def self.latest
    Product.order(:updated_at).last
  end
end
