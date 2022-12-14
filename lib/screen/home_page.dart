import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../util/Catergories.dart';
import '../util/food_title.dart';
import 'detail_recipe.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //create list of categories
  final List categories = [
    ['All', true],
    ['Food', false],
    ['Drink', false],
  ];
  //user taped on category
  void categorySelected(int index) {
    setState(() {
      for (int i = 0; i < categories.length; i++) {
        categories[i][1] = false;
      }
    });
    categories[index][1] = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const DetailsRecipePage()));
        },
        backgroundColor: Colors.green,
        child: Icon(Icons.document_scanner_outlined),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //   ),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        iconSize: 20.0,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: [
          //Home
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.home),
              ),
              label: 'Home'),

          //Edit
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.edit),
              ),
              label: 'Upload'),

          //Scan
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).backgroundColor,
            icon: Padding(
              padding: const EdgeInsets.all(18.0),
              child: const SizedBox.shrink(),
            ),
            label: "Scan",
          ),

          //Notifications
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.notifications),
              ),
              label: 'Notification'),

          //Profile
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.person),
              ),
              label: 'Profile'),
        ],
      ),

      //Body of the Home Page
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              //Search bar
              SizedBox(
                height: 2,
                width: 360,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search',
                    filled: true,
                    fillColor: Colors.black12,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                  ),
                ),
              ),

              //Categories
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Text(
                            'Categories',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: categories.length,
                        itemBuilder: (context, index) {
                          return Categories(
                              category: categories[index][0],
                              isSelected: categories[index][1],
                              onPressed: () {
                                categorySelected(index);
                              });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              //Items list
              DefaultTabController(
                length: 2,
                child: Column(
                  children: [
                    TabBar(
                      tabs: [
                        Tab(
                          child: Text(
                            'Left',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                                color: Colors.black45),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Right',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.normal,
                                fontSize: 15,
                                color: Colors.black45),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              //List of Food View
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 0.6,
                  children: [
                    FoodTitle(
                        ImagePath: 'assets/person_1.jpeg',
                        UserName: 'Calum Lewis',
                        FoodImagePath: 'assets/image_4.jpeg',
                        FoodName: 'PanCake'),
                    FoodTitle(
                        ImagePath: 'assets/person_2.jpeg',
                        UserName: 'Eilif Sonas',
                        FoodImagePath: 'assets/image_5.jpeg',
                        FoodName: 'Latte'),
                    FoodTitle(
                        ImagePath: 'assets/person_1.jpeg',
                        UserName: 'Elena Shelby',
                        FoodImagePath: 'assets/image_4.jpeg',
                        FoodName: 'PanCake'),
                    FoodTitle(
                        ImagePath: 'assets/person_2.jpeg',
                        UserName: 'John Priyadi',
                        FoodImagePath: 'assets/image_4.jpeg',
                        FoodName: 'PanCake'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
