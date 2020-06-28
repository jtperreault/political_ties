# frozen_string_literal: true

class Figure < ApplicationRecord
  validates :first_name, :last_name, presence: true
end
