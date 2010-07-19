require 'test_helper'

class CourtTest < ActiveSupport::TestCase
  should "be valid" do
    assert Court.new.valid?
  end
end
