import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:plant_project/constants.dart';
import 'package:plant_project/models/plants.dart';
import 'package:plant_project/ui/scan_page.dart';
import 'package:plant_project/ui/screens/cart_page.dart';
import 'package:plant_project/ui/screens/favorite_page.dart';
import 'package:plant_project/ui/screens/home_page.dart';
import 'package:plant_project/ui/screens/profile_page.dart';
import 'package:page_transition/page_transition.dart';
import 'login_page.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  List<Plant> favorites = [];
  List<Plant> myCart = [];
  int _bottomeNavIndex=0;
  List<Widget> _widgetOptions(){
    return [
      const HomePage(),
    FavoritePage(favoritedPlants: favorites),
    CartPage(addedtoCartPlants: myCart),
     const ProfilePage()
    ];
  }

  List<IconData> iconList = [
    Icons.home,
    Icons.favorite,
    Icons.shopping_cart,
    Icons.person
  ];

  List<String> titleList = [
    'Home',
    'Favorite',
    'Cart',
    'Profile'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(titleList[_bottomeNavIndex],style: TextStyle(
              color: Constants.blackColor,
              fontWeight: FontWeight.w500,
              fontSize: 24,
            ),),
            Icon(Icons.notifications, color: Constants.blackColor,size: 30.0,)
          ],
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0.0,

      ),
      body: IndexedStack(
        index: _bottomeNavIndex,
        children: _widgetOptions(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, PageTransition(child: const ScanPage(),type:PageTransitionType.bottomToTop));
        },
        child: Image.asset('assets/images/code-scan.png',height: 30.0,),
        backgroundColor: Constants.primaryColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        splashColor: Constants.primaryColor,
        activeColor: Constants.primaryColor,
        inactiveColor: Colors.black.withOpacity(.5),
        icons: iconList,
        activeIndex: _bottomeNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        onTap:(index){
          setState(() {
            _bottomeNavIndex= index;
            final List<Plant> favoritedPlants = Plant.getFavoritedPlants();
            final List<Plant> addedtoCartPlants = Plant.addedToCartPlants();
            favorites = favoritedPlants;
            myCart = addedtoCartPlants.toSet().toList();
          });
        },
      ),
    );
  }
}

