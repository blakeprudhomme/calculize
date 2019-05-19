require 'test_helper'

class StringTest < ActiveSupport::TestCase
  test 'calculize addition' do
    assert_equal '1+2'.calculize, 3.0
  end

  test 'calculize subtraction' do
    assert_equal '10-3'.calculize, 7.0
  end

  test 'calculize multiplication' do
    assert_equal '5*4'.calculize, 20.0
  end

  test 'calculize division' do
    assert_equal '25/5'.calculize, 5.0
  end

  test 'calculize zero division' do
    assert_equal '2/0'.calculize, Float::INFINITY
  end

  test 'calculize order of operations' do
    assert_equal '20/2*8'.calculize, 80.0
    assert_equal '10*10/5+34-5+25/5'.calculize, 54.0
    assert_equal '56/2+34-567*854-23-5+3*12'.calculize, -484_148.0
  end

  test 'calculize with white space' do
    assert_equal '1+2'.calculize, 3.0
    assert_equal '1 + 2'.calculize, 3.0
    assert_equal '1   + 2'.calculize, 3.0
    assert_equal '  1   +2  '.calculize, 3.0
  end

  test 'calculize math with floats' do
    assert_equal '2.5 + 2.8'.calculize, 5.3
    assert_equal '2.8 - 2.5'.calculize, 0.2999999999999998
    assert_equal '2.5 * 2.8'.calculize, 7.0
    assert_equal '2.5 / 2.8'.calculize, 0.8928571428571429
  end

  test 'example from instructions' do
    # Input example:
    # 5*3+1+6/85+9*100

    # Expected output:
    # 5*3+1+6/85+9*100
    # 916.07
    assert_equal '5*3+1+6/85+9*100'.calculize.round(2), 916.07
  end
end
