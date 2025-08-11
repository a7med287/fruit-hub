import 'package:flutter/material.dart';
import 'package:fruit_hub/core/helper/on_generate_routs.dart';
import 'package:fruit_hub/core/services/shared_prefrences_singletone.dart';
import 'features/splash/presentation/views/splash_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
   await Prefs.init();
  runApp(const FruitHub());
}

class FruitHub extends StatelessWidget{
  const FruitHub({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Cairo"
      ),
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.routeName,
      debugShowCheckedModeBanner: false,
    );
  }
}


