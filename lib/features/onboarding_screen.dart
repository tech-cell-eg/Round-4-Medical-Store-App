import 'package:flutter/material.dart';
import 'login_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
            Image.asset(
              'assets/images/splash_image_1.png',
              width: 256,
              height: 284,
            ),

            
            SizedBox(height: 20),

            Image.asset(
              'assets/images/splash_details.png',
              width: 255,
              height: 152,
            ),

            Spacer(),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
          
                  TextButton(
                    onPressed: null,
                    child: Text(
                      'Skip',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[400],
                      ),
                    ),
                  ),

        
                  Row(
                    children: [
                      _buildDot(true),
                      _buildDot(false),
                      _buildDot(false),
                    ],
                  ),

             
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'Next',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ),

      
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }


  Widget _buildDot(bool isActive) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        color: isActive ? Colors.blue : Colors.grey[400],
        shape: BoxShape.circle,
      ),
    );
  }
}

