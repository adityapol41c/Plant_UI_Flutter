import 'package:flutter/material.dart';
import 'package:plant_project/constants.dart';
import 'package:plant_project/models/plants.dart';
import 'package:plant_project/ui/screens/widgets/plant_widget.dart';

class CartPage extends StatefulWidget {
  final List<Plant> addedtoCartPlants;
  const CartPage({super.key, required this.addedtoCartPlants});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: widget.addedtoCartPlants.isEmpty
          ? Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100,
                    child: Image.asset('assets/images/add-cart.png'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Your cart is Empty',
                    style: TextStyle(
                        color: Constants.primaryColor,
                        fontWeight: FontWeight.w300,
                        fontSize: 18),
                  )
                ],
              ),
            )
          : Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 30),
              height: size.height,
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                        itemCount: widget.addedtoCartPlants.length,
                        scrollDirection: Axis.vertical,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return PlantWidget(
                            index: index,
                            plantList: widget.addedtoCartPlants,
                          );
                        }),
                  ),
                  Column(
                    children: [
                      const Divider(
                        thickness: 1.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                           const Text('Totals', style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.w300
                          ),
                          ),
                          Text(r'Rs110',style: TextStyle(
                            fontSize: 24.0,
                            color: Constants.primaryColor,
                            fontWeight: FontWeight.bold
                          ),),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
    );
  }
}