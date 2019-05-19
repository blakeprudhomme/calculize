require 'test_helper'

class FloatTest < ActiveSupport::TestCase
  test 'try_integer converts a float to an integer when the float ends with ".0"' do
    assert_equal 3.0.try_integer, 3
    assert_equal 3.1.try_integer, 3.1
    assert_equal 15.0.try_integer, 15
    assert_equal 15.3.try_integer, 15.3
    assert_equal 15.03.try_integer, 15.03
    assert_equal 15.030.try_integer, 15.030
  end

  test 'example from instructions' do
    # Input example:
    # 5*3+1+6/2+9*100

    # Expected output:
    # 5*3+1+6/2+9*100
    # 919
    assert_equal '5*3+1+6/2+9*100'.calculize.try_integer, 919
  end
end
