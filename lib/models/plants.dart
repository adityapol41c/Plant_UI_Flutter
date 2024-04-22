class Plant {
  final int plantId;
  final int price;
  final String size;
  final double rating;
  final int humidity;
  final String temperature;
  final String category;
  final String plantName;
  final String imageURL;
  bool isFavorated;
  final String decription;
  bool isSelected;

  Plant(
      {required this.plantId,
        required this.price,
        required this.category,
        required this.plantName,
        required this.size,
        required this.rating,
        required this.humidity,
        required this.temperature,
        required this.imageURL,
        required this.isFavorated,
        required this.decription,
        required this.isSelected});

  //List of Plants data
  static List<Plant> plantList = [
    Plant(
        plantId: 0,
        price: 22,
        category: 'Indoor',
        plantName: 'Aloe Vera',
        size: 'Small',
        rating: 4.5,
        humidity: 34,
        temperature: '23 - 34',
        imageURL: 'assets/images/plant-one.png',
        isFavorated: true,
        decription:
        'Aloe vera, known for its soothing gel, is a succulent plant with medicinal properties.' 
        'It is commonly used in skincare and health products for its moisturizing and healing effects.',
        isSelected: false),
    Plant(
        plantId: 1,
        price: 11,
        category: 'Outdoor',
        plantName: 'Jasmine',
        size: 'Medium',
        rating: 4.8,
        humidity: 56,
        temperature: '19 - 22',
        imageURL: 'assets/images/plant-two.png',
        isFavorated: false,
        decription:
        'Jasmine, prized for its intoxicating fragrance, graces gardens with its delicate white blooms.' 
        'This versatile plant adds charm and elegance to outdoor spaces, often used for its aromatic flowers in perfumery and tea.',
        isSelected: false),
    Plant(
        plantId: 2,
        price: 18,
        category: 'Indoor',
        plantName: 'Money Plant',
        size: 'Large',
        rating: 4.7,
        humidity: 34,
        temperature: '22 - 25',
        imageURL: 'assets/images/plant-three.png',
        isFavorated: false,
        decription:
        'Money plant, scientifically known as Epipremnum aureum, is a popular indoor plant with heart-shaped leaves.' 
         'Its believed to bring prosperity and good luck, making it a common choice for home and office decoration.',
        isSelected: false),
    Plant(
        plantId: 3,
        price: 30,
        category: 'Outdoor',
        plantName: 'Neem',
        size: 'Small',
        rating: 4.5,
        humidity: 35,
        temperature: '23 - 28',
        imageURL: 'assets/images/plant-one.png',
        isFavorated: false,
        decription:
        'Neem, a versatile tree native to the Indian subcontinent, is esteemed for its medicinal properties, particularly in Ayurvedic medicine.' 
        'Its bitter leaves and oil extract are used for their antifungal, antibacterial, and insecticidal properties.',
        isSelected: false),
    Plant(
        plantId: 4,
        price: 24,
        category: 'Recommended',
        plantName: 'Tulsi',
        size: 'Large',
        rating: 4.1,
        humidity: 66,
        temperature: '12 - 16',
        imageURL: 'assets/images/plant-four.png',
        isFavorated: true,
        decription:
        'Tulsi, also known as Holy Basil, is a sacred herb in Hindu culture revered for its medicinal and spiritual significance.' 
        'With aromatic leaves and small purple flowers, it is widely cultivated in Indian households and temples for its healing properties and religious importance.',
        isSelected: false),
    Plant(
        plantId: 5,
        price: 24,
        category: 'Outdoor',
        plantName: 'Hibiscus',
        size: 'Medium',
        rating: 4.4,
        humidity: 36,
        temperature: '15 - 18',
        imageURL: 'assets/images/plant-five.png',
        isFavorated: false,
        decription:
        'Hibiscus, known for its vibrant, trumpet-shaped flowers, adds a tropical charm to outdoor spaces.' 
        'It iss prized for its beauty and is commonly used in gardens and landscapes across India.',
        isSelected: false),
    Plant(
        plantId: 6,
        price: 19,
        category: 'Garden',
        plantName: 'Gulmohar',
        size: 'Small',
        rating: 4.2,
        humidity: 46,
        temperature: '23 - 26',
        imageURL: 'assets/images/plant-six.png',
        isFavorated: false,
        decription:
        'Gulmohar, also known as the Flame Tree, is renowned for its vibrant clusters of fiery red-orange flowers.' 
        'Native to tropical regions, it adds a striking splash of color to landscapes and streets across India.',
        isSelected: false),
    Plant(
        plantId: 7,
        price: 23,
        category: 'Garden',
        plantName: 'Champa',
        size: 'Medium',
        rating: 4.5,
        humidity: 34,
        temperature: '21 - 24',
        imageURL: 'assets/images/plant-seven.png',
        isFavorated: false,
        decription:
        'Champa, also known as Plumeria, is a fragrant flowering tree native to India and Southeast Asia.' 
        'Its clusters of colorful, aromatic flowers are used in religious ceremonies, perfumery, and decorative garlands.',
        isSelected: false),
    Plant(
        plantId: 8,
        price: 46,
        category: 'Recommended',
        plantName: 'Amla',
        size: 'Medium',
        rating: 4.7,
        humidity: 46,
        temperature: '21 - 25',
        imageURL: 'assets/images/plant-eight.png',
        isFavorated: false,
        decription:
        'Amla, also known as Indian gooseberry, is a fruit prized for its high vitamin C content and medicinal properties.' 
        'It is used in traditional Ayurvedic medicine for its antioxidant and rejuvenating effects.',
        isSelected: false),
  ];

  //Get the favorated items
  static List<Plant> getFavoritedPlants(){
    List<Plant> _travelList = Plant.plantList;
    return _travelList.where((element) => element.isFavorated == true).toList();
  }

  //Get the cart items
  static List<Plant> addedToCartPlants(){
    List<Plant> _selectedPlants = Plant.plantList;
    return _selectedPlants.where((element) => element.isSelected == true).toList();
  }
}