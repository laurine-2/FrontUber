
import 'package:flutter/material.dart';
import 'package:uber_front/components/buttom_bar_composant.dart';
import 'package:uber_front/components/restaurant_card_component.dart';
import 'package:uber_front/components/restaurant_cart_min_component.dart';
import 'package:uber_front/components/search_component.dart';
import 'package:uber_front/components/tab_bar_component.dart';
import 'package:uber_front/example/restaurants_example.dart';

import '../components/action_button_component.dart';
import '../components/action_button_min_component.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
          length: 2,
          child: Scaffold(
          bottomNavigationBar: const ComponentBottomBar(),
            body: TabBarView(children: [OrderTab(), OrderTab()]),
          ),
        ));
  }
}
class OrderTab extends StatelessWidget{
  OrderTab({
    Key? key,
}) : super (key: key);

  final List<ComponentRestaurantCard> exampleList = exampleDataRaw.map((restaurant) => ComponentRestaurantCard(data: restaurant)).toList()..shuffle();

  final List<Padding> minExampleList = exampleDataRaw
      .map((restaurant) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: ComponentRestaurantMinCard(data: restaurant),))
  .toList()
  ..shuffle();

  @override
  Widget build(BuildContext context){
    return NestedScrollView(
      //header tout ce qui est entête
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) =>
            const [
              ComponentTabBar(),
              ComponentSearchField()
            ],
      body: SingleChildScrollView(
        child: Column(
            children: [
        Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                ComponentActionButton(
                    label: 'Restaurants',
                    iconPath: 'assets/icons/restaurant.png'),
                SizedBox(width: 10.0),
                ComponentActionButton(
                    label: 'Courses', iconPath: 'assets/icons/courses.png'),
              ],
            ),
            //pour l'espace au milieur
            const SizedBox(height: 10.0),
            Row(
              children: const [
                ComponentActionButtonMin(
                    label: 'Commerces de bouche',
                    iconPath: 'assets/icons/proximity.png'),
                SizedBox(width: 5.0),
                ComponentActionButtonMin(
                    label: 'Alcool', iconPath: 'assets/icons/alcool.png'),
                SizedBox(width: 5.0),
                ComponentActionButtonMin(
                    label: 'Course', iconPath: 'assets/icons/car.png'),
                SizedBox(width: 5.0),
                ComponentActionButtonMin(
                    label: 'Tout afficher', iconPath: 'assets/icons/more.png')
              ],
            ),
          ],
        ),

      ),

              const ComponentDivider(),
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                child: Column(
                  children: exampleList,
                ),
              ),
              const ComponentDivider(),
              Container(
                padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                child: Column(
                  children: [
                    const Text('Halal : les meilleures adresses',
                        style: TextStyle(fontSize: 20.0)),
                    const SizedBox(height: 10.0),
                    SizedBox(
                      height: 230.0,
                      child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: minExampleList),
                    ),
                  ],
                ),
              ),
              const ComponentDivider(),
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                child: Column(children: exampleList),
              ),
        ]
      ),
      )
    );
  }
}
class ComponentDivider extends StatelessWidget{
  const ComponentDivider ({Super, key});

  @override
Widget build(BuildContext context){
    return const Divider(
      color: Color(0xFFf4f4f4f),
      thickness: 8.0,
    );
  }
}