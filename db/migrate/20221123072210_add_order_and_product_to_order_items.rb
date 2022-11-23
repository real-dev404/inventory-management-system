class AddOrderAndProductToOrderItems < ActiveRecord::Migration[6.1]
  def change
    add_reference :order_items, :order, foreign_key: true
    add_reference :order_items, :product, foreign_key: true
  end
end
