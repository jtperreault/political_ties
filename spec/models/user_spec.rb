# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { User.new(
    name: 'Example name',
    email: 'example@example.org',
    password: 'foobar',
    password_confirmation: 'foobar'
  ) }

  it 'should be valid' do
    expect(user.valid?).to be_truthy
  end

  it 'is invalid when name is missing' do
    user.name = ' '
    expect(user.valid?).to be_falsey
    assert_not user.valid?
  end

  it 'email should be present' do
    user.email = ' '
    assert_not user.valid?
  end

  it 'name should not be too long' do
    user.name = 'a' * 99
    assert_not user.valid?
  end

  it 'email should not be too long' do
    user.email = 'a' * 244 + '@example.com'
    assert_not user.valid?
  end

  it 'email validation should reject invalid addresses' do
    invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.
                           foo@bar_baz.com foo@bar+baz.com]
    invalid_addresses.each do |invalid_address|
      user.email = invalid_address
      assert_not user.valid?, "#{invalid_address.inspect} should be invalid"
    end
  end

  it 'email addresses should be saved as lower-case' do
    mixed_case_email = 'Foo@ExAMPle.CoM'
    user.email = mixed_case_email
    user.save
    assert_equal mixed_case_email.downcase, user.reload.email
  end

  it 'password should be present' do
    user.password = user.password_confirmation = ' ' * 6
    assert_not user.valid?
  end

  it 'password has a minimum length' do
    user.password = user.password_confirmation = 'a' * 5
    assert_not user.valid?
  end
end









