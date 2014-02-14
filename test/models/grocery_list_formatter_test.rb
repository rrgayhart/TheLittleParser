require 'test_helper'
require 'GroceryListFormatter'

class GroceryListFormatterTest < ActiveSupport::TestCase

  test "it handles edge cases" do
    assert_equal "Corn", check_name('1 cup of corn')
    assert_equal "Black Peppercorn", check_name('8 black peppercorns')
    assert_equal "Red Wine Vinegar", check_name("1 cup red wine vinegar")
    assert_equal "Cloves", check_name("1 tablespoon of cloves")
    assert_equal "Salt and Pepper", check_name("salt and pepper")
    assert_equal "Olive Oil", check_name("2 tablespoons olive oil")
    assert_equal "Pearl Onion", check_name("8 ounces white or yellow pearl onions")
    assert_equal "Pork Loin", check_name("4 boneless pork loin cutlets, 6-8 ounces each")
  end

  test "it handles odd pluralization" do
    assert_equal "Pancetta", check_name("1 cup pancetta, finely diced")
    assert_equal "Bay Leaves", check_name('2 bay leaves')
  end


  def check_name(string)
    GroceryListFormatter.check_name(string)
  end

end
