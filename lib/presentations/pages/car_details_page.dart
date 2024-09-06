import 'package:car_rental_app/data_models/car.dart';
import 'package:car_rental_app/presentations/widgets/car_card.dart';
import 'package:car_rental_app/presentations/widgets/more_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CarDetailPage extends StatelessWidget {
  final Car car;
  const CarDetailPage({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.info_outline),
            Text("Informação"),
          ],
        ),
      ),
      body: Column(
        children: [
          CarCard(
            car: Car(
                model: car.model,
                distance: car.distance,
                fuelCapacity: car.fuelCapacity,
                pricePerHour: car.pricePerHour),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: const Color(0xfff3f3f3),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 10,
                            spreadRadius: 5,
                          )
                        ]),
                    child: const Column(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage("assets/user.png"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Jane Cooper",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "\$4.253",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Container(
                    height: 170,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          image: AssetImage("assets/maps.png"),
                          fit: BoxFit.cover,
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 10,
                            spreadRadius: 5,
                          )
                        ]),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                MoreCard(
                  car: Car(
                      model: car.model+"- 1",
                      distance: car.distance+100,
                      fuelCapacity: car.fuelCapacity+100,
                      pricePerHour: car.pricePerHour+20),
                ),
                SizedBox(height: 5),
                MoreCard(
                  car: Car(
                      model: car.model+"- 2",
                      distance: car.distance+200,
                      fuelCapacity: car.fuelCapacity+200,
                      pricePerHour: car.pricePerHour+10),
                ),
                SizedBox(height: 5),
                MoreCard(
                  car: Car(
                      model: car.model+"- 3",
                      distance: car.distance+300,
                      fuelCapacity: car.fuelCapacity+300,
                      pricePerHour: car.pricePerHour+30),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
