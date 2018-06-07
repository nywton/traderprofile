# This class represents a asset in stock market like EUR/USD, DOL, or PERTR4
class Stock < ApplicationRecord

  validates_presence_of :name, :initials

  def last_quote
    #TODO Api get current quote
  end
end
