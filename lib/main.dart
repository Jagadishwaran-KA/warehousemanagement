import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'screens/Login.dart';
import 'screens/bclogin.dart';
import 'screens/dashboard.dart';
// import 'screens/cardswipe.dart';
import 'screens/bottomnavbar.dart';
import 'screens/Inbound.dart';
import 'screens/ReceiptDetails.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/login': (context) => BCLoginPage(),
        '/home': (context) => MainLayout(child: Dashboard()),
        // '/profile': (context) => MainLayout(child: ProfilePage()),
      },
    );
  }
}

class MainLayout extends StatelessWidget {
  final Widget child;

  const MainLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inventra',
        style: GoogleFonts.urbanist(
        fontSize: 34,
        fontWeight: FontWeight.w600,
        letterSpacing: 1,
        color: Colors.white,
      ),
      ),
      actions: [
        Icon(Icons.notifications_active, color: Colors.white,size: 24,),
        const SizedBox(width: 16),
        CircleAvatar(
          radius: 16,
          backgroundColor: Color(0xFFD5ED6A),
          backgroundImage: AssetImage('images/avatar.png'),
        ),
        const SizedBox(width: 8),
      ],
      backgroundColor: Color(0xFF222222),
      ),
      body: SafeArea(
        child: Container(
            width: double.infinity,
            color:Color(0xFF161616),
            child: child),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF222222),
        selectedItemColor: const Color(0xFFD5ED6A),
        unselectedItemColor: Colors.white,
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 14,
        ),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home',),
          BottomNavigationBarItem(icon: Icon(Icons.trending_up_sharp), label: 'Inventory'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}

