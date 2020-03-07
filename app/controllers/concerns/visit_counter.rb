# frozen_string_literal: true

module VisitCounter
  extend ActiveSupport::Concern

  private

  def add_visit
    reset_visit unless session[:visit_count]

    session[:visit_count] += 1
  end

  def reset_visit
    session[:visit_count] = 0
  end
end
