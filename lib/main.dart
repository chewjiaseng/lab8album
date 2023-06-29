import 'package:flutter/material.dart';
import 'package:photo_album_app/screens/pin_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const PhotoAlbumApp());
}

class PhotoAlbumApp extends StatelessWidget {
  const PhotoAlbumApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Photo Album',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(48, 23, 105, 1),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 87, 191, 255),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              Color.fromRGBO(107, 171, 255, 1),
            ),
          ),
        ),
      ),
      home: PinScreen(),
    );
  }
}
