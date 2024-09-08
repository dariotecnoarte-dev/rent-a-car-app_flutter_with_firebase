import 'dart:js_interop';

import 'package:car_rental_app/firebase_options.dart';
import 'package:car_rental_app/injection_container.dart';
import 'package:car_rental_app/presentations/bloc/car_bloc.dart';
import 'package:car_rental_app/presentations/bloc/car_event.dart';
import 'package:car_rental_app/presentations/pages/car_details_page.dart';
import 'package:car_rental_app/presentations/pages/onboarding_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'presentations/pages/maps_detail_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  initInjection();
  runApp(
    const MyApp(),
    );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_)  => getIt<CarBloc>()..add(LoadCars()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Car rent app',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: OnboardingPage(),
      ),
    );
  }
}
