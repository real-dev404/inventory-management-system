# frozen_string_literal: true

class ProductSupplier < ApplicationRecord
  belongs_to :product
  belongs_to :supplier
end
