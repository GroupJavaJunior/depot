# frozen_string_literal: true

class LineItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :product
  belongs_to :cart

  def total_price
    price * quantity
  end
end
