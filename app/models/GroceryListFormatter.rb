class GroceryListFormatter

def self.normal
  ['Allspice', 
  'Salt and Pepper',
  'Black Peppercorn',
  'Arrowroot starch',
  'Basil',
  'Bay Leaves',
  'Chili Powder',
  'Cinnamon',
  'Garlic',
  'Red Wine Vinegar',
  'Coriander',
  'Cream of tartar',
  'Cumin',
  'Curry',
  'Dill',
  'Fennel',
  'Five-spice powder',
  'Garlic powder',
  'Ginger',
  'Marjoram',
  'Mint',
  'Mustard',
  'Nutmeg',
  'Pearl Onion',
  'Red Onion',
  'Sweet Onion',
  'Oregano',
  'Paprika',
  'cayenne',
  'Peppercorns',
  'Poppy seeds',
  'Rosemary',
  'Sage',
  'Sesame seeds',
  'Tarragon',
  'Thyme',
  'Turmeric',
  'Vanilla',
  'Baking Powder',
  'Baking Soda',
  'Brown Sugar',
  'Brownie Mix',
  'Cake Mix',
  'Cocoa',
  'Cornstarch',
  'Flour',
  'Sugar',
  'Vanilla Extract',
  'Bread Crumbs',
  'Biscuits',
  'Bread',
  'Buns',
  'Rolls',
  'Soup',
  'Canned Tuna',
  'BBQ Sauce',
  'Cooking Spray',
  'Honey',
  'Horseradish',
  'Hot sauce',
  'Jelly',
  'Ketchup',
  'Mayonnaise',
  'Mustard',
  'Olive Oil',
  'Peanut Butter',
  'Salad Dressing',
  'Salsa',
  'Soy Sauce',
  'Vegetable Oil',
  'Worcestershire',
  'Dairy',
  'Butter',
  'Cheese',
  'Cottage Cheese',
  'Cream',
  'Cream Cheese',
  'Eggs',
  'Milk',
  'Sour Cream',
  'Pancetta',
  'Yogurt',
  'Water',
  'Coffee',
  'Juice',
  'Soda Pop',
  'Sports Drinks',
  'Tea',
  'French Fries',
  'Frozen Vegetables',
  'Ice Cream',
  'Pizza',
  'Pasta',
  'Rice',
  'Spaghetti Sauce',
  'Meats',
  'Beef',
  'Pork Loin',
  'Chicken',
  'Fish',
  'Pork',
  'Apple',
  'Asparagus',
  'Bananas',
  'Berries',
  'Broccoli',
  'Cabbage',
  'Carrots',
  'Cauliflower',
  'Celery',
  'Corn',
  'Garlic',
  'Grapes',
  'Lemons',
  'Bacon',
  'Lettuce',
  'Limes',
  'Melons',
  'Mushrooms',
  'Nectarines',
  'Onions',
  'Oranges',
  'Peaches',
  'Pears',
  'Plums',
  'cornstarch',
  'rice wine vinegar',
  'sesame oil',
  'hoisin sauce',
  'Scallion',
  'Tomatoes'
  ]
end

def self.secondary
  [
    'Salt',
    'Cloves',
    'Pepper',
    'Pork',
    'Onion'
  ]
end

  def self.check_name(string)
    array = normal.select do |ingredient|
      string.downcase.include?(ingredient.downcase.pluralize) ||
      string.downcase.include?(ingredient.downcase)
    end
    if array.any?
      array.first
    else
      check_secondary(string)
    end
  end

  def self.check_secondary(string)
    secondary.select do |ingredient|
      string.downcase.include?(ingredient.downcase.pluralize) ||
      string.downcase.include?(ingredient.downcase)
    end.first
  end

end
