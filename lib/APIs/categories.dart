import 'package:wearift/models/categories.dart';

List<Category> categories = categoriesData
    .map((item) => Category(
        (item as dynamic)['name'],
        (item as dynamic)['price'],
        (item as dynamic)['image'],
        (item as dynamic)['description']))
    .toList();

var categoriesData = [
  {
    "name": "Square Neck Bralet And Flippy Short Co-ord Set",
    'price': 17.00,
    'image': "images/clothes/1.webp"
  },
  {
    "name": "Square Neck Bralet And Flippy Short Co-ord Set",
    'courses': 25.00,
    'image': "images/clothes/21.webp"
  },
  {
    "name": "Square Neck Bralet And Flippy Short Co-ord Set",
    'price': 17.00,
    'image': "images/clothes/2.webp"
  },
  {
    "name": "Square Neck Bralet And Flippy Short Co-ord Set",
    'courses': 25.00,
    'image': "images/clothes/20.webp"
  },
  {
    "name": "Square Neck Bralet And Flippy Short Co-ord Set",
    'price': 17.00,
    'image': "images/clothes/3.webp"
  },
  {
    "name": "Square Neck Bralet And Flippy Short Co-ord Set",
    'courses': 25.00,
    'image': "images/clothes/19.webp"
  },
  {
    "name": "Square Neck Bralet And Flippy Short Co-ord Set",
    'price': 17.00,
    'image': "images/clothes/4.webp"
  },
  {
    "name": "Square Neck Bralet And Flippy Short Co-ord Set",
    'courses': 25.00,
    'image': "images/clothes/18.webp"
  },
  {
    "name": "Square Neck Bralet And Flippy Short Co-ord Set",
    'price': 17.00,
    'image': "images/clothes/5.webp"
  },
  {
    "name": "Square Neck Bralet And Flippy Short Co-ord Set",
    'courses': 25.00,
    'image': "images/clothes/17.webp"
  },
  {
    "name": "Square Neck Bralet And Flippy Short Co-ord Set",
    'price': 17.00,
    'image': "images/clothes/6.webp"
  },
  {
    "name": "Square Neck Bralet And Flippy Short Co-ord Set",
    'courses': 25.00,
    'image': "images/clothes/16.webp"
  },
  {
    "name": "Square Neck Bralet And Flippy Short Co-ord Set",
    'price': 17.00,
    'image': "images/clothes/7.webp"
  },
  {
    "name": "Square Neck Bralet And Flippy Short Co-ord Set",
    'courses': 25.00,
    'image': "images/clothes/15.webp"
  },
  {
    "name": "Square Neck Bralet And Flippy Short Co-ord Set",
    'price': 17.00,
    'image': "images/clothes/8.webp"
  },
  {
    "name": "Square Neck Bralet And Flippy Short Co-ord Set",
    'courses': 25.00,
    'image': "images/clothes/14.webp"
  },
  {
    "name": "Square Neck Bralet And Flippy Short Co-ord Set",
    'price': 17.00,
    'image': "images/clothes/9.webp"
  },
  {
    "name": "Square Neck Bralet And Flippy Short Co-ord Set",
    'courses': 25.00,
    'image': "images/clothes/13.webp"
  },
  {
    "name": "Square Neck Bralet And Flippy Short Co-ord Set",
    'price': 17.00,
    'image': "images/clothes/10.webp"
  },
  {
    "name": "Square Neck Bralet And Flippy Short Co-ord Set",
    'courses': 25.00,
    'image': "images/clothes/12.webp"
  },
  {
    "name": "Square Neck Bralet And Flippy Short Co-ord Set",
    'courses': 25.00,
    'image': "images/clothes/11.webp"
  },
];
