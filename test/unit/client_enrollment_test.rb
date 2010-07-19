require 'test_helper'

class ClientEnrollmentTest < ActiveSupport::TestCase
  should "be valid" do
    assert ClientEnrollment.new.valid?
  end
end
