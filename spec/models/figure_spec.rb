# frozen_string_literal: true
require 'rails_helper'

RSpec.describe Figure, type: :model do
  it 'is invalid without a name' do
    invalid_instance = described_class.new(first_name: nil)
    expect(invalid_instance.invalid?).to be_truthy
  end
end
