class Recipe{
  String label;
  String imageUrl;
  int servings;
  List<Ingredient> ingredients;
  

  Recipe(this.label, this.imageUrl,this.servings, this.ingredients);


  static List<Recipe> samples = [
    Recipe('Jollof Rice and Chicken', 'assets/image/svgs/Jollof Rice and Chicken.jpg',4,
    [Ingredient(1, 'box', 'Rice'),
    Ingredient(4, '','Maggi,tomatoes'),
    Ingredient(0.5, 'jar', 'Sauce'),
    ]
    ),
    Recipe('Egusi Soup', 'assets/image/svgs/Egusi Soup.jpg',2,
    [Ingredient(1, 'box', 'Rice'),
    Ingredient(4, '','Maggi,tomatoes'),
    Ingredient(0.5, 'jar', 'Sauce'),
    ]
    ),
    Recipe('Afang soup', 'assets/image/svgs/Afang Soup.jpg',3,
      [Ingredient(1, 'box', 'Rice'),
    Ingredient(4, '','Maggi,tomatoes'),
    Ingredient(0.5, 'jar', 'Sauce'),
    ]
    ),
    Recipe('Jollof Spaghetti', 'assets/image/svgs/Jollof Spaghetti.jpg',5,
      [Ingredient(1, 'box', 'Rice'),
    Ingredient(4, '','Maggi,tomatoes'),
    Ingredient(0.5, 'jar', 'Sauce'),
    ]
    ),
    Recipe('Beans and Plantain', 'assets/image/svgs/Beans and plantain.jpg',3,
      [Ingredient(1, 'box', 'Rice'),
    Ingredient(4, '','Maggi,tomatoes'),
    Ingredient(0.5, 'jar', 'Sauce'),
    ]
    ),
    Recipe('Porridge yam', 'assets/image/svgs/porridge yam1.jpg',1,
      [Ingredient(1, 'box', 'Rice'),
    Ingredient(4, '','Maggi,tomatoes'),
    Ingredient(0.5, 'jar', 'Sauce'),
    ]
    ),
    Recipe("Okro Soup", 'assets/image/svgs/okro soup.jpg',2,
      [Ingredient(1, 'box', 'Rice'),
    Ingredient(4, '','Maggi,tomatoes'),
    Ingredient(0.5, 'jar', 'Sauce'),
    ]
    ),
    Recipe('Fried Rice and Chicken', 'assets/image/svgs/Fried Rice and Chicken.jpg',7,
      [Ingredient(1, 'box', 'Rice'),
    Ingredient(4, '','Maggi,tomatoes'),
    Ingredient(0.5, 'jar', 'Sauce'),
    ]
    ),
    Recipe('Amala and Ewedu Soup', 'assets/image/svgs/Amala and ewedu soup.jpg',4,
      [Ingredient(1, 'box', 'Rice'),
    Ingredient(4, '','Maggi,tomatoes'),
    Ingredient(0.5, 'jar', 'Sauce'),
    ]
    ),
    Recipe('Porridge yam', 'assets/image/svgs/porridge yam2.jpg',3,
      [Ingredient(1, 'box', 'Rice'),
    Ingredient(4, '','Maggi,tomatoes'),
    Ingredient(0.5, 'jar', 'Sauce'),
    ]
    ),
  ];
}

class Ingredient{
  double quantity;
  String measure;
  String name;

  Ingredient (this.quantity,this.measure,this.name);
}