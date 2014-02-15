require 'test_helper'

class ParseTest < ActiveSupport::TestCase

  test 'it handles normal cases' do
    assert_equal 'pound', method_measurement('1 pound chicken')
  end

  test 'it handles edge cases' do
    assert_equal 'strip', method_measurement('8 strips thick-cut bacon')
  end

def method_measurement(string)
  parse = Parse.new(string)
  parse.get_measurement
end



end
