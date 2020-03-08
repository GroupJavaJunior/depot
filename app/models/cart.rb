# frozen_string_literal: true

class Cart < ActiveRecord::Base
  has_many :line_items, dependent: :destroy

  def add_product(product)
    current_item = line_items.find_by(product_id: product.id)
    if current_item
      current_item.quantity += 1
      current_item
    else
      line_items.build(product_id: product.id, price: product.price)
    end
  end

  def total_price
    line_items.to_a.sum(&:total_price)
  end
end
