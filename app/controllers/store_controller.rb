# frozen_string_literal: true

class StoreController < ApplicationController
  include CurrentCart
  include VisitCounter

  before_action :add_visit, :set_cart, only: [:index]

  def index
    @products = Product.order(:title)
  end
end
