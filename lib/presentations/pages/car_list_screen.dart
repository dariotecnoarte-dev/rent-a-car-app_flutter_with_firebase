import 'package:car_rental_app/data_models/car.dart';
import 'package:car_rental_app/presentations/widgets/car_card.dart';
import 'package:flutter/material.dart';

class CarListScreen extends StatelessWidget {
  final List<Car> cars = [
    Car(model: "Fortuner GR", distance: 870, fuelCapacity: 50, pricePerHour: 45),
    Car(model: "Fortuner GR", distance: 870, fuelCapacity: 50, pricePerHour: 45),
    Car(model: "Fortuner GR", distance: 870, fuelCapacity: 50, pricePerHour: 45),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Escolhe o seu carro"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,

      ),
      body: ListView.builder(
        itemCount: cars.length,
        itemBuilder: (context, index){
          return CarCard(car: cars[index]);
        }
        ),
    );
  }
}