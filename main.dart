import 'package:flutter/material.dart';
import 'package:webtoon/screens/home_screen2.dart';
import 'package:webtoon/services/api_service.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen2());
  }
}
