# frozen_string_literal: true

class StoreController < ApplicationController
  include CurrentCart
  include VisitCounter

  before_action :add_visit, :set_cart, only: [:index]
  skip_before_action :authorize

  def index
    @products = Product.order(:title)
  end
end
