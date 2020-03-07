# frozen_string_literal: true

class StoreController < ApplicationController
  include VisitCounter

  before_action :add_visit, only: [:index]

  def index
    @products = Product.order(:title)
  end
end
