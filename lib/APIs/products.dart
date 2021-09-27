import 'package:wearift/models/product.dart';

var productsData = [
  {
    "id": 1,
    "size": 9,
    'description': dummyText,
    "title": "Square Neck Bralet And Flippy Short Co-ord Set",
    'price': 17.00,
    'image': "assets/images/clothes/1.webp"
  },
  {
    "id": 1,
    "size": 9,
    'description': dummyText,
    "title": "Square Neck Bralet And Flippy Short Co-ord Set",
    'price': 25.00,
    'image': "assets/images/clothes/21.webp"
  },
  {
    "id": 1,
    "size": 9,
    'description': dummyText,
    "title": "Square Neck Bralet And Flippy Short Co-ord Set",
    'price': 17.00,
    'image': "assets/images/clothes/2.webp"
  },
  {
    "id": 1,
    "size": 9,
    'description': dummyText,
    "title": "Square Neck Bralet And Flippy Short Co-ord Set",
    'price': 25.00,
    'image': "assets/images/clothes/20.webp"
  },
  {
    "id": 1,
    "size": 9,
    'description': dummyText,
    "title": "Square Neck Bralet And Flippy Short Co-ord Set",
    'price': 17.00,
    'image': "assets/images/clothes/3.webp"
  },
  {
    "id": 1,
    "size": 9,
    'description': dummyText,
    "title": "Square Neck Bralet And Flippy Short Co-ord Set",
    'price': 25.00,
    'image': "assets/images/clothes/19.webp"
  },
  {
    "id": 1,
    "size": 9,
    'description': dummyText,
    "title": "Square Neck Bralet And Flippy Short Co-ord Set",
    'price': 17.00,
    'image': "assets/images/clothes/4.webp"
  },
  {
    "id": 1,
    "size": 9,
    'description': dummyText,
    "title": "Square Neck Bralet And Flippy Short Co-ord Set",
    'price': 25.00,
    'image': "assets/images/clothes/18.webp"
  },
  {
    "id": 1,
    "size": 9,
    'description': dummyText,
    "title": "Square Neck Bralet And Flippy Short Co-ord Set",
    'price': 17.00,
    'image': "assets/images/clothes/5.webp"
  },
  {
    "id": 1,
    "size": 9,
    'description': dummyText,
    "title": "Square Neck Bralet And Flippy Short Co-ord Set",
    'price': 25.00,
    'image': "assets/images/clothes/17.webp"
  },
  {
    "id": 1,
    "size": 9,
    'description': dummyText,
    "title": "Square Neck Bralet And Flippy Short Co-ord Set",
    'price': 17.00,
    'image': "assets/images/clothes/6.webp"
  },
  {
    "id": 1,
    "size": 9,
    'description': dummyText,
    "title": "Square Neck Bralet And Flippy Short Co-ord Set",
    'price': 25.00,
    'image': "assets/images/clothes/16.webp"
  },
  {
    "id": 1,
    "size": 9,
    'description': dummyText,
    "title": "Square Neck Bralet And Flippy Short Co-ord Set",
    'price': 17.00,
    'image': "assets/images/clothes/7.webp"
  },
  {
    "id": 1,
    "size": 9,
    'description': dummyText,
    "title": "Square Neck Bralet And Flippy Short Co-ord Set",
    'price': 25.00,
    'image': "assets/images/clothes/15.webp"
  },
  {
    "id": 1,
    "size": 9,
    'description': dummyText,
    "title": "Square Neck Bralet And Flippy Short Co-ord Set",
    'price': 17.00,
    'image': "assets/images/clothes/8.webp"
  },
  {
    "id": 1,
    "size": 9,
    'description': dummyText,
    "title": "Square Neck Bralet And Flippy Short Co-ord Set",
    'price': 25.00,
    'image': "assets/images/clothes/14.webp"
  },
  {
    "id": 1,
    "size": 9,
    'description': dummyText,
    "title": "Square Neck Bralet And Flippy Short Co-ord Set",
    'price': 17.00,
    'image': "assets/images/clothes/9.webp"
  },
  {
    "id": 1,
    "size": 9,
    'description': dummyText,
    "title": "Square Neck Bralet And Flippy Short Co-ord Set",
    'price': 25.00,
    'image': "assets/images/clothes/13.webp"
  },
  {
    "id": 1,
    "size": 9,
    'description': dummyText,
    "title": "Square Neck Bralet And Flippy Short Co-ord Set",
    'price': 17.00,
    'image': "assets/images/clothes/10.webp"
  },
  {
    "id": 1,
    "size": 9,
    'description': dummyText,
    "title": "Square Neck Bralet And Flippy Short Co-ord Set",
    'price': 25.00,
    'image': "assets/images/clothes/12.webp"
  },
  {
    "id": 1,
    "size": 9,
    'description': dummyText,
    "title": "Square Neck Bralet And Flippy Short Co-ord Set",
    'price': 25.00,
    'image': "assets/images/clothes/11.webp"
  },
];

List<Product> products = productsData
    .map((e) => Product(
        id: (e as dynamic)['id'],
        image: (e as dynamic)['image'],
        title: (e as dynamic)['title'],
        price: (e as dynamic)['price'],
        description: (e as dynamic)['description'],
        size: (e as dynamic)['size'],
        color: (e as dynamic)['color']))
    .toList();

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
