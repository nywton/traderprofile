class Operation < ApplicationRecord
  belongs_to :stock
  belongs_to :user

  validates_presence_of :account_type

  enum account_type: { demo: 0, real: 1 }

  def in_price
    #TODO get first order price
  end

  # Buy or Sell order
  def order_type
    #TOdo get first order to show type
    "Compra"
  end

  def out_price
    #TODO get order that closes the first order
  end

  def average_price
    #TODO Calculate average price with orders
  end

  def op_type
    #TODO Definide if is a Daytrade or Swing Trade operation
  end

  def status
    #TODO returns if is open/closed
  end
end
