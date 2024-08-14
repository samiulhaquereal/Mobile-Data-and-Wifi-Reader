import 'package:flutter/material.dart';
import 'package:wifiandnet/controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          ElevatedButton(onPressed: ()async{
            await NetworkUtils.turnOnWiFi();
          }, child: Text('Wifi On')),
          ElevatedButton(onPressed: ()async{
            await NetworkUtils.turnOffWiFi();
          }, child: Text('Wifi Off')),
          ElevatedButton(onPressed: ()async{
            await NetworkUtils.turnOnMobileData();
          }, child: Text('Mobile Data On')),
          ElevatedButton(onPressed: ()async{
            await NetworkUtils.turnOffMobileData();
          }, child: Text('Mobile Data Off')),
          ElevatedButton(onPressed: ()async{
            await NetworkUtils.turnOnAirplaneMode();
          }, child: Text('Airplane Mode On')),
          ElevatedButton(onPressed: ()async{
            await NetworkUtils.turnOffAirplaneMode();
          }, child: Text('Airplane Mode Off')),
        ],
      ),
    ));
  }
}
