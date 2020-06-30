require 'time'
require 'test-helper'

class FigureTest < ActiveSupport::TestCase
  def setup
      @figure = Figure.new(first_name: "Joe",
                           last_name: "Biden",
                           birthdate: Time.new(1942, 11, 20).strftime('%m/%d/%Y'),
                           party: Party.new("Democrat"),
                           race: Race.new("President of the United States"))
  end

  test 'should be valid' do
      assert @figure.valid?
  end

  test 'first name should be present' do
      @figure.first_name = ' '
      assert_not @figure.valid?
  end

  test 'last name should be present' do
      @figure.last_name = ' '
      assert_not @figure.valid?
  end

  test 'presence should be true' do
      @figure.presence = false
      assert_not @figure.valid?
  end

  test "figure's party should be present" do
    @figure.party = ' '
    assert_not @figure.valid?
  end

  test "figure's race should be present" do
    @figure.race = ' '
    assert_not @figure.valid?
  end
end