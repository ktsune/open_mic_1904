require './lib/open_mic'
require './lib/user'
require './lib/joke'
require 'minitest/pride'
require 'minitest/autorun'

class OpenMicTest < MiniTest::Test

  def test_it_exists
    open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})
    assert_instance_of OpenMic, open_mic
  end

  def test_it_has_attributes
    open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})

    assert_equal "Comedy Works", open_mic.location
    assert_equal "11-20-18", open_mic.date
    assert_equal [], open_mic.performers
  end

  def test_it_welcomes_performers
    sal = User.new("Sal")
    ali = User.new("Ali")

    assert_equal sal, @open_mic.welcome
    assert_equal ali, @open_mic.welcome
  end
end
