# frozen_string_literal: true

class Order < ApplicationRecord
  belongs_to :user
  has_many :products, through: :order_items
  has_many :order_items, dependent: :destroy
  has_one :transaction, dependent: :destroy
end
