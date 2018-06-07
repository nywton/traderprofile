class Operation < ApplicationRecord
  belongs_to :stock
  belongs_to :user

  def in_price
    #TODO get first order price
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
