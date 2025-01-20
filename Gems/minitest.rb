# Gemfile

source "https://rubygems.org"

gem "minitest"


require 'minitest/autorun'
require './library'

class TestLibrary < Minitest::Test
  def test_addition
    assert_equal "A Wrinkle in Time(Fiction) by Madeleine L'Engle", library.add_book ("A Wrinkle in Time", "Madeleine L'Engle", "Fiction"), "Failed to Add Book"
  end
end
