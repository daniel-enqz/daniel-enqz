# frozen_string_literal: true


class Human < ApplicationRecord
  has_one :pc
  has_many :dreams

  vaidates :keyboard, presence: true
  validates :mouse, presence: true

  def set_name
    self.name = 'Daniel Enqz'
  end
end
