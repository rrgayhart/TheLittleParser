require 'test_helper'
require 'GroceryListFormatter'

class GroceryListFormatterTest < ActiveSupport::TestCase

  test "it handles edge cases" do
    assert_equal "Corn", check_name('1 cup of corn')
    assert_equal "Bay Leaves", check_name('2 bay leaves')
    assert_equal "Black Peppercorns", check_name('8 black peppercorns')
    assert_equal "Red Wine Vinegar", check_name("1 cup red wine vinegar")
    assert_equal "Cloves", check_name("1 tablespoon of cloves")

  end


  def check_name(string)
    GroceryListFormatter.check_name(string)
  end

end
