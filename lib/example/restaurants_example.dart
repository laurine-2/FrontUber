import '../models/restaurant_model.dart';

const _description =
    'Lorem ipsum dolor sit amet,consectetur adipiscing elit. Cras ullamcorper risus sed metus pharetra,sodales convallis eros ullamcorper. Aliquam rutrum, mi eget ,facilisis maximus, dolor felis tincidunt ante, ut vestibulum nisi , augue at enim. Nam ac consectetur odio. Cras mattis nulla sit amet sem , finibus rhoncus. Sed efficitur lacus quis elit sagittis, non lacinia , quam sollicitudin. Donec egestas, diam sit amet condimentum placerat.';

final exampleDataRaw = [
  Restaurant(
      title: 'Le Gros Burger',
      description: _description,
      type: ['Burger', 'Sandwiche'],
      assetImage: 'assets/images/burgerfood.png',
      minDelay: 10,
      maxDelay: 15,
      deliverCost: 3.50,
      rating: 3,
      minCostToDeliver: 15),
  Restaurant(
      title: 'Jinchan Sho',
      description: _description,
      type: ['Jap'],
      assetImage: 'assets/images/biigMac.png',
      minDelay: 20,
      maxDelay: 25,
      deliverCost: 2.60,
      rating: 4,
      minCostToDeliver: 7),
  Restaurant(
      title: 'La Pizze',
      description: _description,
      type: ['Pizza'],
      assetImage: 'assets/images/pizza.jpg',
      minDelay: 10,
      maxDelay: 15,
      deliverCost: 2.80,
      rating: 3,
      minCostToDeliver: 15),
  Restaurant(
      title: 'Le Bobun',
      description: _description,
      type: ['Vietnamian'],
      assetImage: 'assets/images/pizza.jpg',
      minDelay: 15,
      maxDelay: 30,
      deliverCost: 2,
      rating: 4,
      minCostToDeliver: 7),
];
