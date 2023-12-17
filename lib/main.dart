import 'package:flutter/material.dart';
import 'package:riding_app/authentication/login_screen.dart';
import 'package:riding_app/authentication/signup_screen.dart';
import 'package:riding_app/splashScreen/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp(
      child: MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Drivers App',
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
    ),
    home: const LoginScreen(),
  )));
}

class MyApp extends StatefulWidget {
  final Widget? child;
  const MyApp({super.key, this.child});

  static void restartApp(BuildContext context) {
    context.findAncestorStateOfType<_MyAppState>()!.restartApp();
  }

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Key key = UniqueKey();
  void restartApp() {
    setState(() {
      key = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
      key: key,
      child: widget.child!,
    );
  }
}
