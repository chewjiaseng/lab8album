import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photo_album_app/screens/add_photo_screen.dart';

class DashboardScreen extends StatelessWidget {
  final List<String> photoAssets = [
    'assets/p1.jpg',
    'assets/photo1.jpg',
    'assets/i3.jpg',
    'assets/i2.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        backgroundColor: Color.fromRGBO(107, 177, 220, 1),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Text(
                    'Recent Photos',
                    style: GoogleFonts.openSans(
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(237, 244, 255, 1),
                    ),
                  ),
                ),
                GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: photoAssets.length,
                  itemBuilder: (BuildContext context, int index) {
                    return _buildPhotoItem(photoAssets[index]);
                  },
                ),
                const SizedBox(height: 20.0),
                ElevatedButton(
                  child: const Text('Add Photo'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AddPhotoScreen()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPhotoItem(String assetPath) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: Image.asset(
        assetPath,
        fit: BoxFit.cover,
      ),
    );
  }
}
