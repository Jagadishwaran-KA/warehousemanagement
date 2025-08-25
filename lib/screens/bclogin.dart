import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class BCLoginPage extends StatelessWidget {
  const BCLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF161616),
      body: Container(
        padding: EdgeInsets.all(32),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 24,
          children: [
            Text('Inventra',
            style: GoogleFonts.urbanist(
              fontSize: 52,
              fontWeight: FontWeight.w500,
              color: Colors.white
            ),
            ),
            Center(child: Image(image: AssetImage('images/onboardingImage.png',),)),
            Column(
              spacing: 24,
              children: [
                InputFields(title: 'Tenant Id',icon: Icon(Icons.perm_identity, color: Colors.white,),),
                InputFields(title: 'Client Id',icon: Icon(Icons.perm_identity, color: Colors.white,),),
                InputFields(title: 'Company URL',icon: Icon(Icons.link_outlined, color: Colors.white,),),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context,'/home');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFD6ED6A),
                minimumSize: Size(150, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                spacing:18,
                children: [
                  Text(
                      'Login',
                      style: GoogleFonts.urbanist(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      )
                  ),
                  Icon(Icons.login, color: Colors.black,size: 26,)
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}



class InputFields extends StatelessWidget {
  const InputFields({super.key, required this.title, required this.icon});
  final String title;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: GoogleFonts.urbanist(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xFF222222),
        prefixIcon: icon,
        labelText: title,
        labelStyle: TextStyle(color: Colors.white),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF222222), width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFD6ED6A), width: 2),
        ),
      ),
    );
  }
}

