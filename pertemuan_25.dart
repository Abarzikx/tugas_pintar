import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Font, Navigation, dan GestureDetector'),
      ),
      body: GestureDetector(
        onTap: () {
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Ini adalah teks dengan font kustom',
                style: GoogleFonts.lateef(
                  fontSize: 24,
                  color: Colors.blue,
                ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  // Aksi yang akan dijalankan saat tombol ditekan
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondScreen(),
                    ),
                  );
                },
                child: Text(
                  'Lanjut ke Layar Kedua',
                  style: GoogleFonts.lateef(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layar Kedua'),
      ),
      body: Center(
        child: GestureDetector(
          onDoubleTap: () {
            // Aksi yang akan dijalankan saat GestureDetector ditekan dua kali
            Navigator.pop(context);
          },
          child: Text(
            'Selamat Datang di Layar Kedua. Ketuk dua kali atau tekan tombol back diatas untuk kembali.',
            style: GoogleFonts.lato(
              fontSize: 25,
              color: Colors.lightBlue
            ),
          ),
        ),
      ),
    );
  }
}