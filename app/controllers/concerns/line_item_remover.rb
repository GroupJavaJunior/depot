# frozen_string_literal: true

module LineItemRemover
  def remove_line_item(line_item)
    return line_item.destroy if @line_item.quantity == 1

    line_item.quantity -= 1
    line_item.save!
  end
end
